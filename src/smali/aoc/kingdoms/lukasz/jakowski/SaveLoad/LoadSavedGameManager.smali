.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;
.super Ljava/lang/Object;
.source "LoadSavedGameManager.java"


# static fields
.field public static afNewGame:Z

.field public static afRestored:Z

.field public static key:Ljava/lang/String;

.field public static playerKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    .line 68
    sput-object v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->playerKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildProvinceCores()V
    .registers 2

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 206
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateCoresSize()V

    .line 207
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateHaveACore()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    :cond_18
    goto :goto_1d

    .line 209
    :catch_19
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 212
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method public static final buildProvinceData()V
    .registers 2

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 217
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 218
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "i":I
    :cond_18
    goto :goto_1d

    .line 220
    :catch_19
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 223
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method public static final buildProvincePopulationData()V
    .registers 2

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 196
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->buildPopulation_LoadGame()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_12

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "i":I
    :cond_11
    goto :goto_16

    .line 198
    :catch_12
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public static loadBuildColonization()V
    .registers 2

    .line 2089
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2090
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildColonizationProvince()V

    .line 2089
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2092
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static loadBuild_ProvincesOccupied()V
    .registers 2

    .line 2101
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2102
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildOccupiedProvinces()V

    .line 2101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2104
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static loadBuild_ProvincesUnderSiege()V
    .registers 2

    .line 2095
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2096
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnderSiege()V

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2098
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final loadPlayer_Data()V
    .registers 4

    .line 2146
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlayerData.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2148
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2149
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    .line 2151
    .local v2, "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iput-object v2, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42

    .line 2153
    nop

    .line 2156
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;
    goto :goto_46

    .line 2154
    :catch_42
    move-exception v0

    .line 2155
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2158
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_46
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    .line 2159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedProvincesSize:I

    .line 2160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    .line 2161
    return-void
.end method

.method public static final loadPlayer_Stats()V
    .registers 4

    .line 2167
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlayerStats.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2169
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2170
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    .line 2172
    .local v2, "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iput-object v2, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42

    .line 2174
    nop

    .line 2177
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;
    goto :goto_46

    .line 2175
    :catch_42
    move-exception v0

    .line 2176
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2178
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public static final loadPlayer_Stats2()V
    .registers 4

    .line 2182
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlayerStats2.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2184
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2185
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    .line 2187
    .local v2, "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iput-object v2, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42

    .line 2189
    nop

    .line 2192
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;
    goto :goto_46

    .line 2190
    :catch_42
    move-exception v0

    .line 2191
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2193
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public static final loadPlayer_Stats3()V
    .registers 4

    .line 2197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlayerStats3.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2199
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2200
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    .line 2202
    .local v2, "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iput-object v2, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42

    .line 2204
    nop

    .line 2207
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempData":Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;
    goto :goto_46

    .line 2205
    :catch_42
    move-exception v0

    .line 2206
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2208
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public static final loadSaveAlliances()V
    .registers 10

    .line 1747
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Alliances.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1749
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1750
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1752
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1753
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1755
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_b3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_b3

    .line 1756
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_b3

    .line 1757
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addAlliance(II)V

    .line 1758
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addAlliance(II)V

    .line 1756
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1761
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_b3
    goto :goto_40

    .line 1763
    :cond_b4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b7} :catch_b9

    .line 1764
    nop

    .line 1767
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_bd

    .line 1765
    :catch_b9
    move-exception v0

    .line 1766
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1768
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bd
    return-void
.end method

.method public static final loadSaveDefensive()V
    .registers 10

    .line 1849
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Defensive.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1851
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1852
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1854
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1855
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1857
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_b3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_b3

    .line 1858
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_b3

    .line 1859
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addDefensivePact(II)V

    .line 1860
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addDefensivePact(II)V

    .line 1858
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1863
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_b3
    goto :goto_40

    .line 1865
    :cond_b4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b7} :catch_b9

    .line 1866
    nop

    .line 1869
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_bd

    .line 1867
    :catch_b9
    move-exception v0

    .line 1868
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1870
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bd
    return-void
.end method

.method public static final loadSaveGuarantee()V
    .registers 10

    .line 1948
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Guarantee.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1950
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1951
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1953
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1954
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1956
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_b3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_b3

    .line 1957
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_b3

    .line 1958
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addGuarantee(II)V

    .line 1959
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addGuaranteeByCivID(II)V

    .line 1957
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1962
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_b3
    goto :goto_40

    .line 1964
    :cond_b4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b7} :catch_b9

    .line 1965
    nop

    .line 1968
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_bd

    .line 1966
    :catch_b9
    move-exception v0

    .line 1967
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1969
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bd
    return-void
.end method

.method public static final loadSaveMilitaryAccess()V
    .registers 10

    .line 1924
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MilitaryAccess.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1926
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1927
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1929
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1930
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1932
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_90

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_90

    .line 1933
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_90

    .line 1934
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addMilitaryAccess(II)V

    .line 1933
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1937
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_90
    goto :goto_40

    .line 1939
    :cond_91
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_96

    .line 1940
    nop

    .line 1943
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_9a

    .line 1941
    :catch_96
    move-exception v0

    .line 1942
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1944
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9a
    return-void
.end method

.method public static final loadSaveNonAggression()V
    .registers 10

    .line 1899
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NonAggression.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1901
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1902
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1904
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1905
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1907
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_b3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_b3

    .line 1908
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_b3

    .line 1909
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addNonAggressionPact(II)V

    .line 1910
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addNonAggressionPact(II)V

    .line 1908
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1913
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_b3
    goto :goto_40

    .line 1915
    :cond_b4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b7} :catch_b9

    .line 1916
    nop

    .line 1919
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_bd

    .line 1917
    :catch_b9
    move-exception v0

    .line 1918
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1920
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bd
    return-void
.end method

.method public static final loadSaveRelations()V
    .registers 10

    .line 1697
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Relations.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1699
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1700
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1702
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1703
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;

    .line 1705
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    if-lez v6, :cond_91

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_91

    .line 1706
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->w:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_91

    .line 1707
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->w:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->r:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation_Load(IF)V

    .line 1706
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1710
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    .end local v6    # "i":I
    :cond_91
    goto :goto_40

    .line 1712
    :cond_92
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_97

    .line 1713
    nop

    .line 1716
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_9b

    .line 1714
    :catch_97
    move-exception v0

    .line 1715
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1717
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9b
    return-void
.end method

.method public static final loadSaveRelations2()V
    .registers 10

    .line 1721
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Relations2.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1723
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1724
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1726
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1727
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;

    .line 1729
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    if-lez v6, :cond_91

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_91

    .line 1730
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->w:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_91

    .line 1731
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->w:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->r:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation_Load(IF)V

    .line 1730
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1734
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    .end local v6    # "i":I
    :cond_91
    goto :goto_40

    .line 1736
    :cond_92
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_97

    .line 1737
    nop

    .line 1740
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_9b

    .line 1738
    :catch_97
    move-exception v0

    .line 1739
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1741
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9b
    return-void
.end method

.method public static final loadSaveRelationsDamage()V
    .registers 11

    .line 1823
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RelationsDamage.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1825
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1826
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1828
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1829
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1831
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_a7

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_a7

    .line 1832
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8f

    .line 1833
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addDamageRelations_Load(II)V

    .line 1832
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 1836
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8f
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v6, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    .line 1838
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_a7
    goto :goto_40

    .line 1840
    :cond_a8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ab} :catch_ad

    .line 1841
    nop

    .line 1844
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_b1

    .line 1842
    :catch_ad
    move-exception v0

    .line 1843
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1845
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b1
    return-void
.end method

.method public static final loadSaveRelationsImprove()V
    .registers 11

    .line 1796
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RelationsImprove.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1798
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1799
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1801
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1802
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1804
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_a7

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_a7

    .line 1805
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8f

    .line 1806
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addImproveRelations_Load(II)V

    .line 1805
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 1809
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8f
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v6, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    .line 1811
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_a7
    goto :goto_40

    .line 1813
    :cond_a8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ab} :catch_ad

    .line 1814
    nop

    .line 1817
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_b1

    .line 1815
    :catch_ad
    move-exception v0

    .line 1816
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1818
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b1
    return-void
.end method

.method public static final loadSaveRivals()V
    .registers 11

    .line 1772
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Rivals.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1774
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1775
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1777
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1778
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1780
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_8f

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_8f

    .line 1781
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8f

    .line 1782
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addRival_load(II)V

    .line 1781
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 1785
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8f
    goto :goto_40

    .line 1787
    :cond_90
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_93} :catch_95

    .line 1788
    nop

    .line 1791
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_99

    .line 1789
    :catch_95
    move-exception v0

    .line 1790
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1792
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_99
    return-void
.end method

.method public static final loadSaveTruce()V
    .registers 10

    .line 1874
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Trcues.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1876
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1877
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1879
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1880
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 1882
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_b3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_b3

    .line 1883
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_68
    if-ltz v6, :cond_b3

    .line 1884
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 1885
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 1883
    add-int/lit8 v6, v6, -0x1

    goto :goto_68

    .line 1888
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_b3
    goto :goto_40

    .line 1890
    :cond_b4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b7} :catch_b9

    .line 1891
    nop

    .line 1894
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_bd

    .line 1892
    :catch_b9
    move-exception v0

    .line 1893
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1895
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bd
    return-void
.end method

.method public static final loadSaveWars()V
    .registers 8

    .line 2110
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Wars.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2112
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2113
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2115
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2117
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2118
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    .line 2120
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/war/War;
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v5, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/war/War;->loadSave_AddInWar()V

    .line 2123
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/war/War;
    goto :goto_45

    .line 2125
    :cond_64
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_69

    .line 2126
    nop

    .line 2129
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_6d

    .line 2127
    :catch_69
    move-exception v0

    .line 2128
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2131
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6d
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/war/WarManager;->iWarsSize:I

    .line 2132
    return-void
.end method

.method public static final loadSaveWars_BuildData()V
    .registers 1

    .line 2136
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/war/WarManager;->buildWars_Load()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 2139
    goto :goto_8

    .line 2137
    :catch_4
    move-exception v0

    .line 2138
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2140
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    return-void
.end method

.method public static final loadSave_AI_Budget()V
    .registers 3

    .line 2073
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI_Budget.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2075
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2076
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    .line 2078
    .local v2, "tempData":Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;
    sput-object v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->aiBudget:Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_40

    .line 2080
    nop

    .line 2083
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempData":Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;
    goto :goto_44

    .line 2081
    :catch_40
    move-exception v0

    .line 2082
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2084
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public static final loadSave_AI_CreateNewArmy()V
    .registers 8

    .line 2026
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI_CreateNewArmy.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2028
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2029
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2032
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2033
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_CreateNewArmy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_CreateNewArmy;

    .line 2035
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_CreateNewArmy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_CreateNewArmy;->c:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_CreateNewArmy;->a:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iput-object v7, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    .line 2037
    nop

    .line 2038
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_CreateNewArmy;
    goto :goto_40

    .line 2040
    :cond_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_65

    .line 2041
    nop

    .line 2044
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_69

    .line 2042
    :catch_65
    move-exception v0

    .line 2043
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2045
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public static final loadSave_AI_Diplomacy()V
    .registers 8

    .line 2049
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI_Diplomacy.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2051
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2052
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2054
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 2056
    .local v3, "civID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2057
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    .line 2059
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "civID":I
    .local v7, "civID":I
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-object v6, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    .line 2061
    nop

    .line 2062
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;
    move v3, v7

    goto :goto_41

    .line 2064
    .end local v7    # "civID":I
    .restart local v3    # "civID":I
    :cond_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_65

    .line 2065
    nop

    .line 2068
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "civID":I
    goto :goto_69

    .line 2066
    :catch_65
    move-exception v0

    .line 2067
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2069
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public static final loadSave_AI_Merge()V
    .registers 8

    .line 2003
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI_Merge.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2005
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2006
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2009
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2010
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_Merge;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_Merge;

    .line 2012
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_Merge;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_Merge;->c:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_Merge;->a:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    iput-object v7, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    .line 2014
    nop

    .line 2015
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_AI_Merge;
    goto :goto_40

    .line 2017
    :cond_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_65

    .line 2018
    nop

    .line 2021
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_69

    .line 2019
    :catch_65
    move-exception v0

    .line 2020
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2022
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public static final loadSave_Airforce()Z
    .registers 16

    const/4 v0, 0x0

    :try_start_1
    const-string v8, "AIRDBG"

    const-string v9, "AF_LOAD:start"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v13

    if-eqz v13, :cond_2c

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v13, :cond_2c

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AF_LD:apts="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/16 v13, 0x90b

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    if-eqz v12, :cond_52

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v12, :cond_52

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AF_LD:bl2315="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    sget-boolean v11, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afNewGame:Z

    if-nez v11, :cond_405

    const-string v2, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/airforce_save/Airforce_Data.json"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string v4, "R1main"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto :goto_83

    :cond_6d
    const-string v2, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/airforce_dbg/Airforce_Data.json"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    if-eqz v2, :cond_40d

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_40d

    const-string v4, "R2dbg"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :goto_83
    const-string v8, "AIRDBG"

    const-string v9, "AF_LD:fb_ok"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airforce;

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airforce;

    const-string v8, "AIRDBG"

    const-string v9, "AF_LD:parsed"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_40d

    const-string v8, "AIRDBG"

    const-string v9, "AF_LOAD:file_ok"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :cond_40d

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v6, :cond_b4

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_b4
    iget-object v6, v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airforce;->airports:Ljava/util/List;

    if-eqz v6, :cond_178

    const-string v14, "R4civ"

    iget-object v15, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v14, "R4dto"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d0
    :goto_d0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_178

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;

    if-eqz v7, :cond_d0

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v8, :cond_d0

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_ea
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_176

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_ea

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_fc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ea

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v11, :cond_fc

    iget v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->provinceID:I

    if-ne v12, v13, :cond_fc

    const-string v14, "L1hit"

    invoke-static {v14, v12}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->totalAircraft:I

    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->totalLost:I

    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->totalLost:I

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->level:I

    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->level:I

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->maxCapacity:I

    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->maxCapacity:I

    iget-object v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iput-object v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->buildTurnsRemaining:I

    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->buildTurnsTotal:I

    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsTotal:I

    iget-object v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iput-object v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->prefPayload:I

    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I

    iget-boolean v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->strikePaused:Z

    iput-boolean v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    iget-object v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->buildQueue:Ljava/util/List;

    if-eqz v12, :cond_14c

    iput-object v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    const-string v13, "Qload"

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v13, v12}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :cond_14c
    iget-object v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v12, :cond_153

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    :cond_153
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_159
    if-ge v14, v13, :cond_175

    aget-object v0, v12, v14

    iget-object v1, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v1, :cond_175

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_172

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v1, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_172
    add-int/lit8 v14, v14, 0x1

    goto :goto_159

    :cond_175
    goto :goto_176

    :cond_176
    :goto_176
    goto/16 :goto_d0

    :cond_178
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airforce;->airunits:Ljava/util/List;

    if-eqz v6, :cond_22f

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_185
    :goto_185
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;

    if-eqz v7, :cond_185

    iget-object v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iget v9, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->civID:I

    new-instance v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    invoke-direct {v10, v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirUnit;-><init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V

    iget-wide v11, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->unitID:J

    iput-wide v11, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->unitID:J

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->typeID:I

    iput v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->typeID:I

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->hp:F

    iput v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->fuel:F

    iput v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->fuel:F

    iget-boolean v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->isAlive:Z

    iput-boolean v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z

    iget-boolean v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->isShotDown:Z

    iput-boolean v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isShotDown:Z

    iget-boolean v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->isInFlight:Z

    iput-boolean v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    iget-object v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    iput-object v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->currentPayload:I

    iput v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->roundsInFlight:I

    iput v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->roundsInFlight:I

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->airportID:I

    iput v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airportID:I

    iget-wide v13, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->unitID:J

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v15, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v8, :cond_185

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1de
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_185

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_1de

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1f0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_185

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v12, :cond_1f0

    iget v13, v12, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iget v0, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airportID:I

    if-ne v13, v0, :cond_1f0

    const-string v14, "L3unit"

    invoke-static {v14, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v0, v12, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v0, :cond_22d

    iget-object v13, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-nez v13, :cond_223

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    iget-object v14, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_223
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "AIRDBG"

    const-string v9, "AF_LOAD:unit_add"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22d
    goto/16 :goto_185

    :cond_22f
    const-string v8, "AIRDBG"

    const-string v9, "AF_LD:t4_enter"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x36ee80

    iget-object v6, v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airforce;->missions:Ljava/util/List;

    if-eqz v6, :cond_3e0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_243
    :goto_243
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;

    if-eqz v7, :cond_243

    iget v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->sourceProvinceID:I

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v8

    if-eqz v8, :cond_3d7

    new-instance v9, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->civID:I

    invoke-direct {v9, v10, v8, v13}, Laoc/kingdoms/lukasz/map/battles/AirMission;-><init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V

    iget-wide v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->missionID:J

    iput-wide v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->targetProvinceID:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->targetArmyID:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetArmyID:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->distanceToTarget:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->flightProgress:F

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->roundsInFlight:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->lingerRounds:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->lingerRounds:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->maxLingerRounds:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->attackRoundsExecuted:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->maxAttackRounds:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->totalDamageDealt:F

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->totalDamageDealt:F

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->enemyAircraftShotDown:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->enemyAircraftShotDown:I

    iget-wide v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->animElapsedMs:J

    iput-wide v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v10, :cond_2a0

    iput-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    :cond_2a0
    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->assignedIDs:Ljava/util/List;

    if-eqz v10, :cond_2d4

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2a8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2d4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_2c6

    check-cast v11, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v12, "value"

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_2c6
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v11, :cond_2d3

    iget-object v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d3
    goto :goto_2a8

    :cond_2d4
    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->aliveIDs:Ljava/util/List;

    if-eqz v10, :cond_308

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2dc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_308

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_2fa

    check-cast v11, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v12, "value"

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_2fa
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v11, :cond_307

    iget-object v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_307
    goto :goto_2dc

    :cond_308
    iget-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_31a

    iget-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v10, v11, :cond_3d7

    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v10, v11, :cond_3d7

    :cond_31a
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->lostIDs:Ljava/util/List;

    if-eqz v10, :cond_351

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_325
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_351

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_343

    check-cast v11, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v12, "value"

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_343
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v11, :cond_350

    iget-object v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->lostAircraft:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_350
    goto :goto_325

    :cond_351
    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->targetAirUnitIDs:Ljava/util/List;

    if-eqz v10, :cond_35a

    iget-object v11, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetAirUnitIDs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_35a
    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    if-eqz v10, :cond_36e

    iget-object v11, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v11, :cond_36e

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    if-eqz v11, :cond_36e

    iput-object v11, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    :cond_36e
    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    const/4 v10, -0x1

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevPrevID:I

    const/4 v10, 0x0

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    iget-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v10, :cond_3ab

    iget v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-eq v11, v12, :cond_3ab

    iget-object v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v11, :cond_3ab

    iget v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    if-eqz v12, :cond_3ab

    iget-object v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    iget-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v10, :cond_3ab

    iget v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    if-eqz v12, :cond_3ab

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    iget-object v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->airArmyKeyL(Ljava/lang/String;)V

    :cond_3ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->animStartMs:J

    iput-wide v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->animPrevMs:J

    iput-wide v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastTickMs:J

    iget-wide v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    cmp-long v11, v12, v2

    if-lez v11, :cond_3bd

    iput-wide v2, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    :cond_3bd
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    iget-object v11, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v11

    if-nez v11, :cond_3ce

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3ce
    const-string v8, "AIRDBG"

    const-string v9, "AF_MIS:restore"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_243

    :cond_3d7
    const-string v8, "AIRDBG"

    const-string v9, "AF_MIS:drop"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_243

    :cond_3e0
    const-string v8, "AIRDBG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AF_LOAD:pool="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "AIRDBG"

    const-string v9, "AF_LOAD:done"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afRestored:Z

    :cond_405
    const-string v8, "AIRDBG"

    const-string v9, "AF_LOAD:newgame_skip"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40d

    :cond_40d
    :goto_40d
    const/4 v11, 0x1

    sput-boolean v11, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afRestored:Z
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_410} :catch_411

    return v0

    :catch_411
    move-exception v0

    const-string v8, "AIRDBG"

    const-string v9, "AF_LOAD:fail"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    const/4 v11, 0x1

    sput-boolean v11, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afRestored:Z

    return v0
.end method

.method public static final loadSave_AllianceSpecial()V
    .registers 7

    .line 1974
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1975
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AllianceSpecial.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1979
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1980
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1982
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1983
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    .line 1985
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1987
    nop

    .line 1988
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;
    goto :goto_48

    .line 1990
    :cond_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_68

    .line 1991
    nop

    .line 1994
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_6c

    .line 1992
    :catch_68
    move-exception v0

    .line 1993
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1996
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    .line 1997
    return-void
.end method

.method public static final loadSave_BuildTechTree()V
    .registers 2

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 150
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree_Load()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final loadSave_Civs()V
    .registers 23

    .line 547
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getNeutralCivilization()Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    .line 551
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Civs.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 553
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 554
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 556
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 558
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    move-object v15, v5

    .line 559
    .local v15, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    invoke-virtual {v1, v5, v15}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    move-object v14, v5

    .line 561
    .local v14, "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData;
    iget-object v5, v14, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v5

    move-object v13, v5

    .line 563
    .local v13, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    new-instance v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iget-object v7, v14, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    iget v8, v14, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    iget v9, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v10, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v6, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    iget v5, v14, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    move-object/from16 v16, v0

    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget v0, v14, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    move-object/from16 v17, v1

    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v17, "json":Lcom/badlogic/gdx/utils/Json;
    iget v1, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    const/16 v18, 0x1

    move/from16 v19, v5

    move-object v5, v11

    move/from16 v20, v6

    move v6, v3

    move-object/from16 v21, v11

    move/from16 v11, v20

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    .end local v13    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    .local v19, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    move v13, v0

    move-object v0, v14

    .end local v14    # "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData;
    .local v0, "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData;
    move v14, v1

    move-object v1, v15

    .end local v15    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .local v1, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    move/from16 v15, v18

    invoke-direct/range {v5 .. v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIIIZ)V

    move-object/from16 v6, v21

    move-object/from16 v5, v22

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v3, v3, 0x1

    .line 571
    nop

    .line 572
    .end local v0    # "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData;
    .end local v1    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v19    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_55

    .line 574
    .end local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    :cond_b4
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_bb} :catch_bd

    .line 575
    nop

    .line 578
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    .end local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    goto :goto_c1

    .line 576
    :catch_bd
    move-exception v0

    .line 577
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 580
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 581
    return-void
.end method

.method public static final loadSave_Civs2()V
    .registers 7

    .line 585
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Civs2.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 587
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 588
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 590
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 592
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 593
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;

    .line 595
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData2;
    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->update(I)V

    .line 597
    add-int/lit8 v3, v3, 0x1

    .line 598
    nop

    .line 599
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData2;
    goto :goto_41

    .line 601
    :cond_5c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_61

    .line 602
    nop

    .line 605
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_65

    .line 603
    :catch_61
    move-exception v0

    .line 604
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 606
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method public static final loadSave_Civs3()V
    .registers 8

    .line 610
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Civs3.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 612
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 613
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 615
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 617
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 618
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    .line 620
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    .line 622
    add-int/lit8 v3, v3, 0x1

    .line 623
    nop

    .line 624
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
    goto :goto_41

    .line 626
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_64

    .line 627
    nop

    .line 630
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_68

    .line 628
    :catch_64
    move-exception v0

    .line 629
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 631
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method public static final loadSave_Civs4()V
    .registers 8

    .line 635
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Civs4.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 637
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 638
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 640
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 642
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 643
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    .line 645
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData4;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    .line 647
    add-int/lit8 v3, v3, 0x1

    .line 648
    nop

    .line 649
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/save/CivData4;
    goto :goto_41

    .line 651
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_64

    .line 652
    nop

    .line 655
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_68

    .line 653
    :catch_64
    move-exception v0

    .line 654
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 656
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method public static final loadSave_CivsAdvisorsAdm()V
    .registers 9

    .line 1058
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorAdministration.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1060
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1061
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1063
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1065
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1066
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    .line 1068
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    if-eqz v6, :cond_ae

    .line 1069
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->n:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 1071
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->y:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 1072
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->m:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 1073
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->d:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 1075
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->g:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 1076
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->e:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 1078
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->l:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_b7

    .line 1081
    :try_start_9d
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    const/4 v8, 0x1

    invoke-static {v7, v3, v8}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a9} :catch_aa

    .line 1084
    goto :goto_ae

    .line 1082
    :catch_aa
    move-exception v7

    .line 1083
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_ab
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1087
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_ae
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    .line 1088
    nop

    .line 1089
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    goto :goto_41

    .line 1091
    :cond_b2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b5} :catch_b7

    .line 1092
    nop

    .line 1095
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_bb

    .line 1093
    :catch_b7
    move-exception v0

    .line 1094
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1096
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bb
    return-void
.end method

.method public static final loadSave_CivsAdvisorsAdmBonuses()V
    .registers 8

    .line 1030
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorAdministrationBonuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1032
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1033
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1035
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1037
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1038
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1040
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    if-eqz v6, :cond_5d

    .line 1041
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1044
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    .line 1045
    nop

    .line 1046
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    goto :goto_41

    .line 1048
    :cond_61
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_66

    .line 1049
    nop

    .line 1052
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_6a

    .line 1050
    :catch_66
    move-exception v0

    .line 1051
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1053
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public static final loadSave_CivsAdvisorsEconomy()V
    .registers 9

    .line 1130
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorEconomy.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1132
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1133
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1135
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1137
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1138
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    .line 1140
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    if-eqz v6, :cond_ae

    .line 1141
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->n:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 1143
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->y:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 1144
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->m:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 1145
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->d:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 1147
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->g:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 1148
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->e:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 1150
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->l:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_b7

    .line 1153
    :try_start_9d
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    const/4 v8, 0x1

    invoke-static {v7, v3, v8}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a9} :catch_aa

    .line 1156
    goto :goto_ae

    .line 1154
    :catch_aa
    move-exception v7

    .line 1155
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_ab
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1159
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_ae
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    .line 1160
    nop

    .line 1161
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    goto :goto_41

    .line 1163
    :cond_b2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b5} :catch_b7

    .line 1164
    nop

    .line 1167
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_bb

    .line 1165
    :catch_b7
    move-exception v0

    .line 1166
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1168
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bb
    return-void
.end method

.method public static final loadSave_CivsAdvisorsEconomyBonuses()V
    .registers 8

    .line 1102
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorEconomyBonuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1104
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1105
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1107
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1109
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1110
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1112
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    if-eqz v6, :cond_5d

    .line 1113
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1116
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    .line 1117
    nop

    .line 1118
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    goto :goto_41

    .line 1120
    :cond_61
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_66

    .line 1121
    nop

    .line 1124
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_6a

    .line 1122
    :catch_66
    move-exception v0

    .line 1123
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1125
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public static final loadSave_CivsAdvisorsInnovation()V
    .registers 9

    .line 1202
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorInnovation.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1204
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1205
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1207
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1209
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1210
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    .line 1212
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    if-eqz v6, :cond_ae

    .line 1213
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->n:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 1215
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->y:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 1216
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->m:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 1217
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->d:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 1219
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->g:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 1220
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->e:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 1222
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->l:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_b7

    .line 1225
    :try_start_9d
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    const/4 v8, 0x1

    invoke-static {v7, v3, v8}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a9} :catch_aa

    .line 1228
    goto :goto_ae

    .line 1226
    :catch_aa
    move-exception v7

    .line 1227
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_ab
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1231
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_ae
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    .line 1232
    nop

    .line 1233
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    goto :goto_41

    .line 1235
    :cond_b2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b5} :catch_b7

    .line 1236
    nop

    .line 1239
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_bb

    .line 1237
    :catch_b7
    move-exception v0

    .line 1238
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1240
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bb
    return-void
.end method

.method public static final loadSave_CivsAdvisorsInnovationBonuses()V
    .registers 8

    .line 1174
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorInnovationBonuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1176
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1177
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1179
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1181
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1182
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1184
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    if-eqz v6, :cond_5d

    .line 1185
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1188
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    .line 1189
    nop

    .line 1190
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    goto :goto_41

    .line 1192
    :cond_61
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_66

    .line 1193
    nop

    .line 1196
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_6a

    .line 1194
    :catch_66
    move-exception v0

    .line 1195
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1197
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public static final loadSave_CivsAdvisorsMilitary()V
    .registers 9

    .line 1274
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorMilitary.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1276
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1277
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1279
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1281
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1282
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;

    .line 1284
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    if-eqz v6, :cond_ae

    .line 1285
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->n:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 1287
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->y:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 1288
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->m:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 1289
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->d:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 1291
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->g:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 1292
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->e:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 1294
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;->l:I

    iput v8, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_b7

    .line 1297
    :try_start_9d
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    const/4 v8, 0x1

    invoke-static {v7, v3, v8}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a9} :catch_aa

    .line 1300
    goto :goto_ae

    .line 1298
    :catch_aa
    move-exception v7

    .line 1299
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_ab
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1303
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_ae
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    .line 1304
    nop

    .line 1305
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Advisor;
    goto :goto_41

    .line 1307
    :cond_b2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b5} :catch_b7

    .line 1308
    nop

    .line 1311
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_bb

    .line 1309
    :catch_b7
    move-exception v0

    .line 1310
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1312
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_bb
    return-void
.end method

.method public static final loadSave_CivsAdvisorsMilitaryBonuses()V
    .registers 8

    .line 1246
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvisorMilitaryBonuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1248
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1249
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1251
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1253
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1254
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1256
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    if-eqz v6, :cond_5d

    .line 1257
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1260
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    .line 1261
    nop

    .line 1262
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    goto :goto_41

    .line 1264
    :cond_61
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_66

    .line 1265
    nop

    .line 1268
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_6a

    .line 1266
    :catch_66
    move-exception v0

    .line 1267
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1269
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public static final loadSave_CivsEventsData()V
    .registers 8

    .line 1344
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EventsData.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1346
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1347
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1349
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1351
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1352
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    .line 1354
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    .line 1356
    add-int/lit8 v3, v3, 0x1

    .line 1357
    nop

    .line 1358
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;
    goto :goto_41

    .line 1360
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_64

    .line 1361
    nop

    .line 1364
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_68

    .line 1362
    :catch_64
    move-exception v0

    .line 1363
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1365
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method public static final loadSave_CivsEventsData2()V
    .registers 8

    .line 1369
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EventsData2.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1371
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1372
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1374
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1376
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1377
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    .line 1379
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    .line 1381
    add-int/lit8 v3, v3, 0x1

    .line 1382
    nop

    .line 1383
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;
    goto :goto_41

    .line 1385
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_64

    .line 1386
    nop

    .line 1389
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_68

    .line 1387
    :catch_64
    move-exception v0

    .line 1388
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1390
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method public static final loadSave_CivsEventsData3()V
    .registers 8

    .line 1394
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EventsData3.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1396
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1397
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1399
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1401
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1402
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    .line 1404
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    .line 1406
    add-int/lit8 v3, v3, 0x1

    .line 1407
    nop

    .line 1408
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
    goto :goto_41

    .line 1410
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_64

    .line 1411
    nop

    .line 1414
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_68

    .line 1412
    :catch_64
    move-exception v0

    .line 1413
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1415
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method public static final loadSave_CivsEventsVariables()V
    .registers 8

    .line 1452
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EventsVariables.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1454
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1455
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1457
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1459
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1460
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    .line 1462
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;
    if-eqz v6, :cond_5d

    .line 1463
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    .line 1466
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    .line 1467
    nop

    .line 1468
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;
    goto :goto_41

    .line 1470
    :cond_61
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_66

    .line 1471
    nop

    .line 1474
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_6a

    .line 1472
    :catch_66
    move-exception v0

    .line 1473
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1475
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public static final loadSave_CivsEventsVariables2()V
    .registers 8

    .line 1479
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EventsVariables2.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1481
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1482
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1484
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1486
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1487
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    .line 1489
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;
    if-eqz v6, :cond_6a

    .line 1490
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    .line 1493
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    .line 1494
    nop

    .line 1495
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;
    goto :goto_4e

    .line 1497
    :cond_6e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_73

    .line 1498
    nop

    .line 1501
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_77

    .line 1499
    :catch_73
    move-exception v0

    .line 1500
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1502
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method public static final loadSave_CivsGeneralsNotAssigned()V
    .registers 7

    .line 1318
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GeneralsNotAssigned.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1320
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1321
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1323
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1324
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 1326
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    if-eqz v5, :cond_5f

    .line 1327
    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->c:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 1330
    :cond_5f
    nop

    .line 1331
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    goto :goto_40

    .line 1333
    :cond_61
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_66

    .line 1334
    nop

    .line 1337
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_6a

    .line 1335
    :catch_66
    move-exception v0

    .line 1336
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1338
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public static final loadSave_CivsGoldenAges()V
    .registers 8

    .line 1508
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GoldenAge.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1510
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1511
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1513
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1515
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1516
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    .line 1518
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;
    if-eqz v6, :cond_5d

    .line 1519
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    .line 1522
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    .line 1523
    nop

    .line 1524
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;
    goto :goto_41

    .line 1526
    :cond_61
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_66

    .line 1527
    nop

    .line 1530
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_6a

    .line 1528
    :catch_66
    move-exception v0

    .line 1529
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1531
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public static final loadSave_CivsLaws()V
    .registers 11

    .line 726
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Laws.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 728
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 729
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 731
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 733
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 734
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Laws;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Laws;

    .line 736
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Laws;
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Laws;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_5c
    if-ge v7, v8, :cond_83

    .line 737
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    iget-object v10, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Laws;->l:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v9, v7, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Laws;->l:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v3, v10}, Laoc/kingdoms/lukasz/map/LawsManager;->updateCivBonuses(IIIF)V

    .line 736
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 742
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_83
    add-int/lit8 v3, v3, 0x1

    .line 743
    nop

    .line 744
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Laws;
    goto :goto_41

    .line 746
    :cond_87
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8c

    .line 747
    nop

    .line 750
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_90

    .line 748
    :catch_8c
    move-exception v0

    .line 749
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 751
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_90
    return-void
.end method

.method public static final loadSave_CivsLegacies()V
    .registers 11

    .line 1560
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Legacies.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1562
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1563
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1565
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1567
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1568
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;

    .line 1570
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;
    iget-object v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_84

    .line 1571
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5e
    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_84

    .line 1572
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;->b:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    iget-object v10, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;->b:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy_Load(II)V

    .line 1571
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    .line 1576
    .end local v7    # "i":I
    :cond_84
    add-int/lit8 v3, v3, 0x1

    .line 1577
    nop

    .line 1578
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Legacies;
    goto :goto_41

    .line 1580
    :cond_88
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8d

    .line 1581
    nop

    .line 1584
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_91

    .line 1582
    :catch_8d
    move-exception v0

    .line 1583
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1585
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_91
    return-void
.end method

.method public static final loadSave_CivsLoans()V
    .registers 8

    .line 1537
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Loans.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1539
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1540
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1542
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1543
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;

    .line 1545
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->c:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    new-instance v7, Laoc/kingdoms/lukasz/map/Loan;

    invoke-direct {v7, v5}, Laoc/kingdoms/lukasz/map/Loan;-><init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;)V

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLoan_Load(Laoc/kingdoms/lukasz/map/Loan;)V

    .line 1546
    nop

    .line 1547
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;
    goto :goto_40

    .line 1549
    :cond_64
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_69

    .line 1550
    nop

    .line 1553
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_6d

    .line 1551
    :catch_69
    move-exception v0

    .line 1552
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1554
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6d
    return-void
.end method

.method public static final loadSave_CivsMoveUnits()V
    .registers 14

    .line 1591
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MoveUnits.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1593
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1594
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1596
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1597
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;

    .line 1599
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->f:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    .line 1601
    .local v6, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v6, :cond_84

    .line 1602
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->c:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->f:I

    iget v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->t:I

    iget-object v11, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->k:Ljava/lang/String;

    iget-boolean v13, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 1603
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->c:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-boolean v8, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    iget-boolean v9, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v7, v5, v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveUnits_Load(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;ZZ)V

    .line 1607
    :cond_84
    nop

    .line 1608
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;
    .end local v6    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    goto :goto_40

    .line 1610
    :cond_86
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_8b

    .line 1611
    nop

    .line 1614
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_8f

    .line 1612
    :catch_8b
    move-exception v0

    .line 1613
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1615
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method

.method public static final loadSave_CivsNukesProduction()V
    .registers 11

    .line 521
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NukesProduction.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 523
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 524
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 526
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 527
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    .line 529
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    if-lez v6, :cond_8d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_8d

    .line 530
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8d

    .line 531
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addNukeProduction_Load(II)V

    .line 530
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 534
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8d
    goto :goto_40

    .line 536
    :cond_8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_93

    .line 537
    nop

    .line 540
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_97

    .line 538
    :catch_93
    move-exception v0

    .line 539
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 541
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_97
    return-void
.end method

.method public static final loadSave_CivsRecruitArmy()V
    .registers 10

    .line 781
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RecruitArmy.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 783
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 784
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 786
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 787
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;

    .line 789
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_5b
    if-ge v6, v7, :cond_71

    .line 790
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;->c:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;->a:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addRecruitArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)V

    .line 789
    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    .line 793
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_71
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;->c:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addRecruitArmy_LoadUpdateSize()V

    .line 795
    nop

    .line 796
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmy;
    goto :goto_40

    .line 798
    :cond_7c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_81

    .line 799
    nop

    .line 802
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_85

    .line 800
    :catch_81
    move-exception v0

    .line 801
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 803
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_85
    return-void
.end method

.method public static final loadSave_CivsRecruitArmyCreate()V
    .registers 11

    .line 757
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RecruitArmyCreate.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 759
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 760
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 762
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 763
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;

    .line 765
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_5b
    if-ge v6, v7, :cond_7b

    .line 766
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;->c:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;->k:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;->p:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    .line 769
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_7b
    nop

    .line 770
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_RecruitArmyCreate;
    goto :goto_40

    .line 772
    :cond_7d
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_82

    .line 773
    nop

    .line 776
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_86

    .line 774
    :catch_82
    move-exception v0

    .line 775
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 777
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_86
    return-void
.end method

.method public static final loadSave_CivsResearchProgress()V
    .registers 13

    .line 697
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResearchProgress.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 699
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 700
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 702
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 704
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 705
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_ResearchProgress;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_ResearchProgress;

    .line 707
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_ResearchProgress;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_56
    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_ResearchProgress;->t:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8b

    .line 708
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    new-instance v9, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget-object v10, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_ResearchProgress;->t:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_ResearchProgress;->p:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;-><init>(IF)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 711
    .end local v7    # "i":I
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    .line 712
    nop

    .line 713
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_ResearchProgress;
    goto :goto_41

    .line 715
    :cond_8f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_94

    .line 716
    nop

    .line 719
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_98

    .line 717
    :catch_94
    move-exception v0

    .line 718
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 720
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_98
    return-void
.end method

.method public static final loadSave_CivsRulers()V
    .registers 9

    .line 976
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Rulers.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 978
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 979
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 981
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 983
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 984
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;

    .line 986
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    new-instance v8, Laoc/kingdoms/lukasz/map/Ruler;

    invoke-direct {v8, v6}, Laoc/kingdoms/lukasz/map/Ruler;-><init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;)V

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    .line 988
    add-int/lit8 v3, v3, 0x1

    .line 989
    nop

    .line 990
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;
    goto :goto_41

    .line 992
    :cond_64
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_69

    .line 993
    nop

    .line 996
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_6d

    .line 994
    :catch_69
    move-exception v0

    .line 995
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 997
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6d
    return-void
.end method

.method public static final loadSave_CivsRulers_Bonuses()V
    .registers 8

    .line 1001
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RulersBonuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1003
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1004
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1006
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1008
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1009
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    .line 1011
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    if-eqz v7, :cond_66

    .line 1012
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    invoke-virtual {v7, v3, v6}, Laoc/kingdoms/lukasz/map/Ruler;->initRulerBonuses_Load(ILaoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 1015
    :cond_66
    add-int/lit8 v3, v3, 0x1

    .line 1016
    nop

    .line 1017
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    goto :goto_41

    .line 1019
    :cond_6a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6f

    .line 1020
    nop

    .line 1023
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_73

    .line 1021
    :catch_6f
    move-exception v0

    .line 1022
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1024
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_73
    return-void
.end method

.method public static final loadSave_CivsTemporaryBonuses()V
    .registers 10

    .line 1421
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BonusesTemp.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1423
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1424
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1426
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 1428
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1429
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;

    .line 1431
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;
    if-eqz v6, :cond_72

    .line 1432
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_58
    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_72

    .line 1433
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;->b:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 1432
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 1437
    .end local v7    # "i":I
    :cond_72
    add-int/lit8 v3, v3, 0x1

    .line 1438
    nop

    .line 1439
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;
    goto :goto_41

    .line 1441
    :cond_76
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7b

    .line 1442
    nop

    .line 1445
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_7f

    .line 1443
    :catch_7b
    move-exception v0

    .line 1444
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1446
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7f
    return-void
.end method

.method public static final loadSave_CivsUnlockedAdvantages()V
    .registers 13

    .line 936
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Advantages.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 938
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 939
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 941
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 943
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 944
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;

    .line 946
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_5c
    if-ge v7, v8, :cond_ad

    .line 947
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    new-instance v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget-object v11, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;->a:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;->l:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v10, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_c6

    .line 950
    :try_start_84
    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;->l:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, "a":I
    :goto_90
    if-ltz v9, :cond_a5

    .line 951
    iget-object v10, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;->a:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v10, v9, v3, v11}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->updateCivBonuses(IIIZ)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a2} :catch_a6

    .line 950
    add-int/lit8 v9, v9, -0x1

    goto :goto_90

    .line 955
    .end local v9    # "a":I
    :cond_a5
    goto :goto_aa

    .line 953
    :catch_a6
    move-exception v9

    .line 954
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_a7
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 946
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 958
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_ad
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iput v8, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    .line 960
    add-int/lit8 v3, v3, 0x1

    .line 961
    nop

    .line 962
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedAdvantages;
    goto :goto_41

    .line 964
    :cond_c1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c4} :catch_c6

    .line 965
    nop

    .line 968
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_ca

    .line 966
    :catch_c6
    move-exception v0

    .line 967
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 969
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ca
    return-void
.end method

.method public static final loadSave_CivsUnlockedTechnologies()V
    .registers 12

    .line 662
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UnlockedTechnologies.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 664
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 665
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 667
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 669
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 670
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedTechnologies;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedTechnologies;

    .line 673
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedTechnologies;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_56
    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedTechnologies;->a:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_65

    .line 674
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setTechnologyResearched(IZ)V

    .line 673
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 678
    .end local v7    # "i":I
    :cond_65
    const/4 v7, 0x0

    .restart local v7    # "i":I
    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedTechnologies;->u:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_6c
    if-ge v7, v8, :cond_84

    .line 679
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v11, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedTechnologies;->u:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setTechnologyResearched(IZ)V

    .line 678
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 682
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_84
    add-int/lit8 v3, v3, 0x1

    .line 683
    nop

    .line 684
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_UnlockedTechnologies;
    goto :goto_41

    .line 686
    :cond_88
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8d

    .line 687
    nop

    .line 690
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_91

    .line 688
    :catch_8d
    move-exception v0

    .line 689
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 691
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_91
    return-void
.end method

.method public static final loadSave_Details(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    .registers 4
    .param p0, "nKey"    # Ljava/lang/String;

    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Details.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 74
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 75
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 77
    .local v2, "tempDetailsData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    return-object v2

    .line 78
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempDetailsData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    :catch_3b
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 82
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final loadSave_Details()V
    .registers 5

    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Details.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 91
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 92
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    .line 94
    .local v2, "tempDetailsData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->sCivTag:Ljava/lang/String;

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->playerKey:Ljava/lang/String;

    .line 96
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iTurnID:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 97
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iTurnID:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->AUTO_SAVE_LAST_TURN_ID:I

    .line 99
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iDay:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    .line 100
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iMonth:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    .line 101
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iYear:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    .line 103
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->scenarioTAG:Ljava/lang/String;

    iput-object v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;

    .line 104
    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->scenarioTAG:Ljava/lang/String;

    sput-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    .line 106
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->DIFFICULTY:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    .line 107
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->FOG_OF_WAR:Z

    sput-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    .line 108
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->SPECTATOR_MODE:Z

    sput-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    .line 109
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->SANDBOX:Z

    sput-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->SANDBOX:Z

    .line 110
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->ENABLE_CALL_VASSALS:Z

    sput-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->ENABLE_CALL_VASSALS:Z

    .line 111
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->SCENARIO_EVENTS:Z

    sput-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    .line 112
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->HOURS_PER_TURN:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    .line 114
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->AI_AGGRESSIVENESS:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiAggressivnes:I

    .line 116
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    .line 117
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    .line 120
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateManpowerImg()V

    .line 121
    const/4 v3, 0x0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateAge(Z)V

    .line 123
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    .line 126
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempDetailsData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    goto :goto_9a

    .line 124
    :catch_96
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 127
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9a
    return-void
.end method

.method public static final loadSave_InitCivsData()V
    .registers 2

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 142
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initTechTree()V

    .line 143
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public static final loadSave_InitCivsData_CoresReligionGenerals()V
    .registers 2

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 162
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->buildProvincesConvertReligion(I)V

    .line 163
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->buildProvincesNonCore(I)V

    .line 164
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->buildArmiesWithoutGenerals(I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public static final loadSave_MapBattles()V
    .registers 7

    .line 1660
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Battles.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1662
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1663
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1665
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1666
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/battles/Battle;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/Battle;

    .line 1668
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/battles/Battle;
    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateLoaded_Load()V

    .line 1669
    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateLoaded_Load()V

    .line 1671
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    nop

    .line 1674
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/battles/Battle;
    goto :goto_40

    .line 1676
    :cond_67
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6c

    .line 1677
    nop

    .line 1680
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_70

    .line 1678
    :catch_6c
    move-exception v0

    .line 1679
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1682
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    .line 1683
    return-void
.end method

.method public static final loadSave_MapBattles_Update()V
    .registers 3

    .line 1686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_40

    .line 1687
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateInBattle_Load(I)V

    .line 1688
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateInBattle_Load(I)V

    .line 1686
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1690
    .end local v0    # "i":I
    :cond_40
    return-void
.end method

.method public static final loadSave_MapPlagues()V
    .registers 7

    .line 886
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Plagues.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 888
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 889
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 891
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 893
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 894
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/plague/Plague;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/Plague;

    .line 896
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/plague/Plague;
    sget-object v6, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    nop

    .line 899
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/plague/Plague;
    goto :goto_45

    .line 901
    :cond_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_65

    .line 902
    nop

    .line 905
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_69

    .line 903
    :catch_65
    move-exception v0

    .line 904
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 906
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public static final loadSave_Population()V
    .registers 9

    .line 173
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Population.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 175
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 176
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 178
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 180
    .local v3, "id":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 181
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    .line 183
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "id":I
    .local v8, "id":I
    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    move v3, v8

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;
    goto :goto_41

    .line 186
    .end local v8    # "id":I
    .restart local v3    # "id":I
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 187
    nop

    .line 190
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "id":I
    goto :goto_67

    .line 188
    :catch_63
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceConstructionBuilding()V
    .registers 14

    .line 293
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_BuildingsConstruction.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 295
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 296
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 298
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 299
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;

    .line 301
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->p:I

    if-ltz v6, :cond_aa

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_aa

    .line 302
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->b0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_aa

    .line 303
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->p:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    new-instance v9, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->b0:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->b1:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->ct:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;->ctL:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;-><init>(IIII)V

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction_Load(Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;)V

    .line 302
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 306
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$ScenarioData_ProvinceConstructionBuilding;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_aa
    goto :goto_40

    .line 308
    :cond_ab
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ae} :catch_b0

    .line 309
    nop

    .line 312
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_b4

    .line 310
    :catch_b0
    move-exception v0

    .line 311
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 313
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b4
    return-void
.end method

.method public static final loadSave_ProvinceCoreCreation()V
    .registers 9

    .line 449
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_CoreCreation.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 451
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 452
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 454
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 455
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;

    .line 457
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    if-ltz v6, :cond_6d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_6d

    .line 458
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->d:I

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->n:I

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addCoreCreation_Load(II)V

    .line 460
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;
    :cond_6d
    goto :goto_40

    .line 462
    :cond_6e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_73

    .line 463
    nop

    .line 466
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_77

    .line 464
    :catch_73
    move-exception v0

    .line 465
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 467
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method public static final loadSave_ProvinceData()V
    .registers 8

    .line 2214
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2216
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2217
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2219
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2221
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2222
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    .line 2224
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2226
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    add-int/lit8 v3, v3, 0x1

    .line 2227
    goto :goto_41

    .line 2229
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2230
    nop

    .line 2233
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2231
    :catch_63
    move-exception v0

    .line 2232
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2234
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData10()V
    .registers 8

    .line 2430
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data10.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2432
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2433
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2435
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2437
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2438
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    .line 2440
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2442
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;
    add-int/lit8 v3, v3, 0x1

    .line 2443
    goto :goto_41

    .line 2445
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2446
    nop

    .line 2449
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2447
    :catch_63
    move-exception v0

    .line 2448
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2450
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData2()V
    .registers 8

    .line 2238
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data2.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2240
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2241
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2243
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2245
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2246
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    .line 2248
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2250
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;
    add-int/lit8 v3, v3, 0x1

    .line 2251
    goto :goto_41

    .line 2253
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2254
    nop

    .line 2257
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2255
    :catch_63
    move-exception v0

    .line 2256
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2258
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData3()V
    .registers 8

    .line 2262
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data3.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2264
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2265
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2267
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2269
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2270
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    .line 2272
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2274
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;
    add-int/lit8 v3, v3, 0x1

    .line 2275
    goto :goto_41

    .line 2277
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2278
    nop

    .line 2281
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2279
    :catch_63
    move-exception v0

    .line 2280
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2282
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData4()V
    .registers 8

    .line 2286
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data4.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2288
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2289
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2291
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2293
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2294
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    .line 2296
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2298
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;
    add-int/lit8 v3, v3, 0x1

    .line 2299
    goto :goto_41

    .line 2301
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2302
    nop

    .line 2305
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2303
    :catch_63
    move-exception v0

    .line 2304
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2306
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData5()V
    .registers 8

    .line 2310
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data5.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2312
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2313
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2315
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2317
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2318
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    .line 2320
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2322
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;
    add-int/lit8 v3, v3, 0x1

    .line 2323
    goto :goto_41

    .line 2325
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2326
    nop

    .line 2329
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2327
    :catch_63
    move-exception v0

    .line 2328
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2330
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData6()V
    .registers 8

    .line 2334
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data6.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2336
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2337
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2339
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2341
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2342
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    .line 2344
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2346
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;
    add-int/lit8 v3, v3, 0x1

    .line 2347
    goto :goto_41

    .line 2349
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2350
    nop

    .line 2353
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2351
    :catch_63
    move-exception v0

    .line 2352
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2354
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData7()V
    .registers 8

    .line 2358
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data7.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2360
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2361
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2363
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2365
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2366
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    .line 2368
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2370
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;
    add-int/lit8 v3, v3, 0x1

    .line 2371
    goto :goto_41

    .line 2373
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2374
    nop

    .line 2377
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2375
    :catch_63
    move-exception v0

    .line 2376
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2378
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData8()V
    .registers 8

    .line 2382
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data8.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2384
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2385
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2387
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2389
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2390
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    .line 2392
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2394
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;
    add-int/lit8 v3, v3, 0x1

    .line 2395
    goto :goto_41

    .line 2397
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2398
    nop

    .line 2401
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2399
    :catch_63
    move-exception v0

    .line 2400
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2402
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceData9()V
    .registers 8

    .line 2406
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Data9.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2408
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 2409
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2411
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x0

    .line 2413
    .local v3, "tID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 2414
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    .line 2416
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    invoke-interface {v7, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2418
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;
    add-int/lit8 v3, v3, 0x1

    .line 2419
    goto :goto_41

    .line 2421
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_63

    .line 2422
    nop

    .line 2425
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tID":I
    goto :goto_67

    .line 2423
    :catch_63
    move-exception v0

    .line 2424
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2426
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public static final loadSave_ProvinceInvestDaysLeft()V
    .registers 11

    .line 319
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_InvestEconomy.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 321
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 322
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 324
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 325
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    .line 327
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    if-ltz v6, :cond_8d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_8d

    .line 328
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8d

    .line 329
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince_Load(II)V

    .line 328
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 332
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8d
    goto :goto_40

    .line 334
    :cond_8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_93

    .line 335
    nop

    .line 338
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_97

    .line 336
    :catch_93
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 339
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_97
    return-void
.end method

.method public static final loadSave_ProvinceInvestGrowthRate()V
    .registers 11

    .line 397
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_InvestGrowth.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 399
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 400
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 402
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 403
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    .line 405
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    if-ltz v6, :cond_8d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_8d

    .line 406
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8d

    .line 407
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince_Load(II)V

    .line 406
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 410
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8d
    goto :goto_40

    .line 412
    :cond_8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_93

    .line 413
    nop

    .line 416
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_97

    .line 414
    :catch_93
    move-exception v0

    .line 415
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 417
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_97
    return-void
.end method

.method public static final loadSave_ProvinceInvestInfrastructure()V
    .registers 11

    .line 423
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_InvestInfrastructure.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 425
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 426
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 428
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 429
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    .line 431
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    if-ltz v6, :cond_8d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_8d

    .line 432
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8d

    .line 433
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addDevelopInfrastructure_Load(II)V

    .line 432
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 436
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8d
    goto :goto_40

    .line 438
    :cond_8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_93

    .line 439
    nop

    .line 442
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_97

    .line 440
    :catch_93
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 443
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_97
    return-void
.end method

.method public static final loadSave_ProvinceInvestManpower()V
    .registers 11

    .line 371
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_InvestManpower.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 373
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 374
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 376
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 377
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    .line 379
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    if-ltz v6, :cond_8d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_8d

    .line 380
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8d

    .line 381
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseManpowerInProvince_Load(II)V

    .line 380
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 384
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8d
    goto :goto_40

    .line 386
    :cond_8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_93

    .line 387
    nop

    .line 390
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_97

    .line 388
    :catch_93
    move-exception v0

    .line 389
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 391
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_97
    return-void
.end method

.method public static final loadSave_ProvinceInvestTax()V
    .registers 11

    .line 345
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_InvestTax.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 347
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 348
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 350
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 351
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;

    .line 353
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    if-ltz v6, :cond_8d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_8d

    .line 354
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_67
    if-ge v6, v7, :cond_8d

    .line 355
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->p:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->d:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince_Load(II)V

    .line 354
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 358
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_8d
    goto :goto_40

    .line 360
    :cond_8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_93

    .line 361
    nop

    .line 364
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_97

    .line 362
    :catch_93
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 365
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_97
    return-void
.end method

.method public static final loadSave_ProvinceReligionConversion()V
    .registers 9

    .line 473
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Conversion.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 475
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 476
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 478
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 479
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;

    .line 481
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    if-ltz v6, :cond_6d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_6d

    .line 482
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->d:I

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->n:I

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addReligionConversion_Load(II)V

    .line 484
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;
    :cond_6d
    goto :goto_40

    .line 486
    :cond_6e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_73

    .line 487
    nop

    .line 490
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_77

    .line 488
    :catch_73
    move-exception v0

    .line 489
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 491
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method public static final loadSave_ProvinceWonderConstruction()V
    .registers 9

    .line 497
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_WonderConstruction.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 499
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 500
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 502
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 503
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;

    .line 505
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    if-ltz v6, :cond_6d

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_6d

    .line 506
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->p:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->d:I

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;->n:I

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addWonderConstruction_Load(II)V

    .line 508
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_ProvinceInvest_Single;
    :cond_6d
    goto :goto_40

    .line 510
    :cond_6e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_73

    .line 511
    nop

    .line 514
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_77

    .line 512
    :catch_73
    move-exception v0

    .line 513
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 515
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method public static final loadSave_ProvincesArmy_MoreFiles(I)Z
    .registers 10
    .param p0, "id"    # I

    .line 809
    const-string v0, ".json"

    const-string v1, "Provinces_Armies_"

    const-string v2, "/"

    const-string v3, "saves/"

    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 812
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 813
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 815
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 816
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;

    .line 818
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->p:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-direct {v8, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;)V

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    iget-object v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->airArmyKeyL(Ljava/lang/String;)V

    .line 820
    nop

    .line 821
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;
    goto :goto_82

    .line 823
    :cond_ab
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_ae} :catch_b2

    .line 824
    const/4 v2, 0x0

    .line 826
    const/4 v3, 0x1

    return v3

    .line 829
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :cond_b1
    return v4

    .line 831
    :catch_b2
    move-exception v0

    .line 832
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 835
    .end local v0    # "ex":Ljava/lang/Exception;
    return v4
.end method

.method public static final loadSave_ProvincesBuildings(I)Z
    .registers 14
    .param p0, "id"    # I

    .line 259
    const-string v0, ".json"

    const-string v1, "Provinces_Buildings_"

    const-string v2, "/"

    const-string v3, "saves/"

    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-nez v5, :cond_47

    const-string v8, "AIRDBG"

    const-string v9, "AF_LD:pbl_miss"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-eqz v5, :cond_e4

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 262
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 263
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 265
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 266
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;

    .line 268
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    if-ltz v7, :cond_dd

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v8

    if-ge v7, v8, :cond_dd

    .line 269
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b0:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_b2
    if-ge v7, v8, :cond_dd

    .line 270
    iget v9, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    new-instance v10, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    iget-object v11, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b0:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b1:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v10, v11, v12}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding_LoadScenario(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    .line 269
    add-int/lit8 v7, v7, 0x1

    goto :goto_b2

    .line 273
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_dd
    goto :goto_8b

    .line 275
    :cond_de
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e1} :catch_e5

    .line 276
    const/4 v2, 0x0

    .line 277
    const/4 v3, 0x1

    return v3

    .line 280
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :cond_e4
    return v4

    .line 282
    :catch_e5
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 286
    .end local v0    # "ex":Ljava/lang/Exception;
    return v4
.end method

.method public static final loadSave_ProvincesPlagues()V
    .registers 8

    .line 912
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Provinces_Plagues.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 914
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 915
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 917
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 918
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Province_Plague;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Province_Plague;

    .line 920
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Province_Plague;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Province_Plague;->p:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Province_Plague;->l:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iput-object v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    .line 922
    nop

    .line 923
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Province_Plague;
    goto :goto_40

    .line 925
    :cond_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_65

    .line 926
    nop

    .line 929
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_69

    .line 927
    :catch_65
    move-exception v0

    .line 928
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 930
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public static final loadSave_Rebels()V
    .registers 4

    .line 1649
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1650
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saves/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Rebels.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 1653
    .end local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    goto :goto_43

    .line 1651
    :catch_3f
    move-exception v0

    .line 1652
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1654
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method public static final loadSave_RebelsMoveUnits()V
    .registers 13

    .line 1621
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RebelsMoveUnits.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1623
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1624
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1626
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 1627
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;

    .line 1629
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->f:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    .line 1631
    .local v6, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v6, :cond_7a

    .line 1632
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->f:I

    iget v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->t:I

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->k:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->newMove(IILjava/lang/String;IZ)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 1633
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-boolean v8, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9, v8}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveUnits_Load(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;ZZ)V

    .line 1637
    :cond_7a
    nop

    .line 1638
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;
    .end local v6    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    goto :goto_40

    .line 1640
    :cond_7c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_81

    .line 1641
    nop

    .line 1644
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_85

    .line 1642
    :catch_81
    move-exception v0

    .line 1643
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1645
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_85
    return-void
.end method

.method public static final loadSave_UpdateDiplomacyPerMonth()V
    .registers 2

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 156
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final loadSave_UpdatePlayersCivID()V
    .registers 3

    .line 132
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 133
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->playerKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 134
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 135
    goto :goto_1f

    .line 132
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static final loadSave_Vassals()Z
    .registers 14

    .line 229
    const-string v0, "Vassals.json"

    const-string v1, "/"

    const-string v2, "saves/"

    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 232
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 233
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 235
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 236
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    .line 238
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/diplomacy/Vassal;
    iget v7, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v8, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v9, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    iget v10, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    iget v11, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    iget-boolean v12, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->cW:Z

    iget v13, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setVassal_LoadData(IIIZF)V

    .line 239
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/diplomacy/Vassal;
    goto :goto_70

    .line 241
    :cond_a2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a5} :catch_a9

    .line 242
    const/4 v2, 0x0

    .line 243
    const/4 v3, 0x1

    return v3

    .line 246
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :cond_a8
    return v3

    .line 248
    :catch_a9
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 252
    .end local v0    # "ex":Ljava/lang/Exception;
    return v3
.end method
