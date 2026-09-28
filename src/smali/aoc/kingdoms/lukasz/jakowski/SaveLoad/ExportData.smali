.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData;
.super Ljava/lang/Object;
.source "ExportData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Save_Save_ProvinceData_3M()V
    .registers 6

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "tSaveDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_6e

    .line 35
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_6b

    .line 36
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;-><init>()V

    .line 38
    .local v2, "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iX:I

    .line 39
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iY:I

    .line 41
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->terrainID:I

    .line 43
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->resourceID:I

    .line 45
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->baseDevelopment:F

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v2    # "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 52
    .end local v1    # "i":I
    :cond_6e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 54
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P3M.json"

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 55
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    const/4 v0, 0x0

    .line 59
    return-void
.end method

.method public static final Save_Save_ProvinceData_Images()V
    .registers 6

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "tSaveDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_88

    .line 111
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_84

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_84

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "provinces/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 113
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;-><init>()V

    .line 115
    .local v2, "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    .line 116
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    .line 118
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    .line 120
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 125
    .end local v1    # "i":I
    :cond_88
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 127
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_IMG.json"

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 128
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v0, 0x0

    .line 132
    return-void
.end method

.method public static final Save_Save_ProvinceData_ScenarioCivs()V
    .registers 6

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v0, "tSaveDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_7e

    .line 226
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_7b

    .line 227
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_7b

    .line 228
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;-><init>()V

    .line 230
    .local v2, "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    .line 231
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    .line 233
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    .line 234
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->numOfProvinces:I

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v2    # "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 241
    .end local v1    # "i":I
    :cond_7e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 243
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_SCEN.json"

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 244
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    const/4 v0, 0x0

    .line 248
    return-void
.end method

.method public static final Save_Save_ProvinceData_ScenarioCivsAssign()V
    .registers 6

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "tSaveDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_76

    .line 254
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_73

    .line 255
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_73

    .line 256
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;-><init>()V

    .line 258
    .local v2, "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    .line 259
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    .line 261
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    .line 262
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->numOfProvinces:I

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v2    # "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 269
    .end local v1    # "i":I
    :cond_76
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 271
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_SCEN_ASSI.json"

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 272
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    const/4 v0, 0x0

    .line 276
    return-void
.end method

.method public static final Save_Save_ProvinceData_Wonders()V
    .registers 6

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "tSaveDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget v2, Laoc/kingdoms/lukasz/map/WondersManager;->wondersSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5c

    .line 166
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;-><init>()V

    .line 168
    .local v2, "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    sget-object v4, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v4, v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    .line 169
    sget-object v4, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v4, v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    .line 171
    sget-object v3, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v3, v3, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 176
    .end local v1    # "i":I
    :cond_5c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 178
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_WOND.json"

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 179
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    const/4 v0, 0x0

    .line 183
    return-void
.end method

.method public static exportFormableCivs()V
    .registers 13

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "exportData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "formableCivs/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "AoH.txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_151

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 373
    .local v1, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "tempT":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "tagsSPLITED":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v3

    .local v6, "iSize":I
    :goto_64
    if-ge v4, v6, :cond_151

    .line 378
    :try_start_66
    aget-object v7, v3, v4

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/FormableCivManager;->loadActiveFormableCivilization(Ljava/lang/String;)V

    .line 380
    sget-object v7, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget v7, v7, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->CapitalProvinceID:I

    if-ltz v7, :cond_148

    .line 381
    new-instance v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;-><init>()V

    .line 383
    .local v7, "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;
    sget-object v8, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    iput-object v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->FormableCivTag:Ljava/lang/String;

    .line 385
    const/4 v8, 0x0

    .local v8, "j":I
    sget-object v9, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "jSize":I
    :goto_85
    if-ge v8, v9, :cond_99

    .line 386
    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ClaimantsTag:Ljava/util/List;

    sget-object v11, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v8, v8, 0x1

    goto :goto_85

    .line 390
    .end local v8    # "j":I
    .end local v9    # "jSize":I
    :cond_99
    const/4 v8, 0x0

    .restart local v8    # "j":I
    sget-object v9, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .restart local v9    # "jSize":I
    :goto_a2
    if-ge v8, v9, :cond_10f

    .line 391
    sget-object v10, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v10

    if-lez v10, :cond_10c

    .line 392
    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesX:Ljava/util/List;

    sget-object v11, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v10, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesY:Ljava/util/List;

    sget-object v11, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_10c
    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    .line 397
    .end local v8    # "j":I
    .end local v9    # "jSize":I
    :cond_10f
    sget-object v8, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget v8, v8, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->CapitalProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v8, v9

    iput v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->CapitalProvinceID_X:I

    .line 398
    sget-object v8, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget v8, v8, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->CapitalProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v8, v9

    iput v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->CapitalProvinceID_Y:I

    .line 401
    iget-object v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesX:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_148

    .line 402
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_148} :catch_149

    .line 407
    .end local v7    # "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;
    :cond_148
    goto :goto_14d

    .line 405
    :catch_149
    move-exception v7

    .line 406
    .local v7, "ex":Ljava/lang/Exception;
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 376
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_14d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_64

    .line 411
    .end local v1    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "tempT":Ljava/lang/String;
    .end local v3    # "tagsSPLITED":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "iSize":I
    :cond_151
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 413
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "P_FORMABLE.json"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 414
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 417
    return-void
.end method

.method public static final loadExported_Formables()V
    .registers 11

    .line 421
    :try_start_0
    const-string v0, "P_FORMABLE.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 423
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 424
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 427
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 428
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;

    .line 430
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;
    new-instance v6, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;-><init>()V

    sput-object v6, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    .line 432
    sget-object v6, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->FormableCivTag:Ljava/lang/String;

    iput-object v7, v6, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    .line 433
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_39
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_53

    .line 434
    sget-object v7, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 438
    .end local v6    # "a":I
    :cond_53
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->CapitalProvinceID_X:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->CapitalProvinceID_Y:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 440
    .local v6, "provID":I
    sget-object v7, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iput v6, v7, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->CapitalProvinceID:I

    .line 442
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_6c
    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesX:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b1

    .line 443
    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesX:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v8, v8, v9

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesY:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v9, v9, v10

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v8

    move v6, v8

    .line 445
    if-ltz v6, :cond_ae

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v8

    if-nez v8, :cond_ae

    .line 446
    sget-object v8, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->addProvince(I)V

    .line 442
    :cond_ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 451
    .end local v7    # "a":I
    :cond_b1
    sget-object v7, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget v7, v7, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->CapitalProvinceID:I

    if-ltz v7, :cond_d2

    sget-object v7, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget v7, v7, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->CapitalProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v7

    if-nez v7, :cond_d2

    sget-object v7, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d2

    .line 452
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveFormableCiv()V

    .line 459
    :cond_d2
    nop

    .line 460
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;
    .end local v6    # "provID":I
    goto/16 :goto_17

    .line 462
    :cond_d5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d8} :catch_da

    .line 463
    nop

    .line 466
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_de

    .line 464
    :catch_da
    move-exception v0

    .line 465
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 467
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_de
    return-void
.end method

.method public static final loadSave_ProvinceData_3M()V
    .registers 9

    .line 63
    :try_start_0
    const-string v0, "P3M.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 65
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 66
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 68
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 69
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;

    .line 71
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iY:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 73
    .local v6, "provID":I
    if-ltz v6, :cond_96

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v7

    if-nez v7, :cond_96

    .line 74
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v7

    if-ltz v7, :cond_7c

    .line 75
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/16 v8, 0x19

    if-ge v7, v8, :cond_96

    .line 76
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->terrainID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    .line 77
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->resourceID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setResourceID(I)V

    .line 78
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->baseDevelopment:F

    iput v8, v7, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    goto :goto_96

    .line 82
    :cond_7c
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->terrainID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    .line 83
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->resourceID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setResourceID(I)V

    .line 84
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->baseDevelopment:F

    iput v8, v7, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    .line 88
    :cond_96
    :goto_96
    nop

    .line 89
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;
    .end local v6    # "provID":I
    goto/16 :goto_17

    .line 91
    :cond_99
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9e

    .line 92
    nop

    .line 95
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_a2

    .line 93
    :catch_9e
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a2
    return-void
.end method

.method public static final loadSave_ProvinceData_Images()V
    .registers 9

    .line 136
    :try_start_0
    const-string v0, "P_IMG.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 138
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 139
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 141
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 142
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    .line 144
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 146
    .local v6, "provID":I
    if-ltz v6, :cond_6d

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png -----> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 150
    :cond_6d
    nop

    .line 151
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    .end local v6    # "provID":I
    goto :goto_17

    .line 153
    :cond_6f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_74

    .line 154
    nop

    .line 157
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_78

    .line 155
    :catch_74
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 158
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_78
    return-void
.end method

.method public static final loadSave_ProvinceData_ScenarioCivs()V
    .registers 15

    .line 280
    :try_start_0
    const-string v0, "P_SCEN.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 282
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 283
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 285
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->createScenario()V

    .line 286
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/4 v4, 0x1

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    .line 288
    const/4 v3, 0x0

    sput v3, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    .line 289
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadReligions_JustBuild(Z)V

    .line 290
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iput-boolean v3, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    .line 292
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_WASTELAND_CONTINENTS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 296
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 297
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    .line 299
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v9

    .line 301
    .local v9, "provID":I
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_85

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOT ADDED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    goto :goto_8f

    .line 305
    :cond_85
    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Laoc/kingdoms/lukasz/jakowski/Game;->addCivilization(Ljava/lang/String;IZZZZZ)Z

    .line 308
    :goto_8f
    nop

    .line 309
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    .end local v9    # "provID":I
    goto :goto_34

    .line 311
    :cond_91
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 313
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9e

    .line 314
    nop

    .line 317
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_a2

    .line 315
    :catch_9e
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 318
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a2
    return-void
.end method

.method public static final loadSave_ProvinceData_ScenarioCivs_Assign()V
    .registers 9

    .line 323
    :try_start_0
    const-string v0, "P_SCEN_ASSI.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 325
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 326
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 329
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 330
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    .line 332
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 334
    .local v6, "provID":I
    if-ltz v6, :cond_5a

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-gtz v7, :cond_5a

    .line 335
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v7

    .line 337
    .local v7, "civID":I
    if-lez v7, :cond_5a

    .line 338
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_RemoveOldAddNewToCiv(I)V

    .line 344
    .end local v7    # "civID":I
    :cond_5a
    nop

    .line 345
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    .end local v6    # "provID":I
    goto :goto_17

    .line 347
    :cond_5c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_61

    .line 348
    nop

    .line 351
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_65

    .line 349
    :catch_61
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 352
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method public static final loadSave_ProvinceData_Wonders()V
    .registers 9

    .line 187
    :try_start_0
    const-string v0, "P_WOND.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 189
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 190
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 192
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 193
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    .line 195
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 197
    .local v6, "provID":I
    if-ltz v6, :cond_6d

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Old prov: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -----> New: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 201
    :cond_6d
    nop

    .line 202
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;
    .end local v6    # "provID":I
    goto :goto_17

    .line 204
    :cond_6f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_74

    .line 205
    nop

    .line 208
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_78

    .line 206
    :catch_74
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 209
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_78
    return-void
.end method
