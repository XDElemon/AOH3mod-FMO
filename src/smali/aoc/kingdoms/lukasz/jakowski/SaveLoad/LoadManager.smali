.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;
.super Ljava/lang/Object;
.source "LoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ScenarioData;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson2;
    }
.end annotation


# static fields
.field public static loadProvinceBorderFileID:I

.field public static loadProvincePointsFileID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePointsFileID:I

    .line 164
    sput v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvinceBorderFileID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildLevelOfPort()V
    .registers 3

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 595
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-lez v1, :cond_19

    .line 596
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    .line 594
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public static final buildNeighboringProvinces()V
    .registers 3

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 551
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 552
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->update(II)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 555
    .end local v1    # "j":I
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySeaSize()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 556
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->update(II)V

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 559
    .end local v1    # "j":I
    :cond_4d
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_4e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySeaSize()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 560
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->update(II)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 550
    .end local v1    # "j":I
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "i":I
    :cond_73
    return-void
.end method

.method public static final loadProvinceBorder()Z
    .registers 11

    .line 169
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvinceBorderFileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvinceBorderFileID:I

    .line 171
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ProvinceNeighboringProvinces/ProvinceNeighboringProvinces"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez v0, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_3d
    const-string v2, ""

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 173
    .local v1, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 174
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 176
    .local v3, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 177
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;

    .line 179
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->wp:I

    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->px:Ljava/util/List;

    iget-object v10, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->py:Ljava/util/List;

    invoke-virtual {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    .line 181
    nop

    .line 182
    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    goto :goto_62

    .line 184
    :cond_87
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_93
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_8a} :catch_8e

    .line 185
    const/4 v3, 0x0

    .line 187
    const/4 v1, 0x0

    .line 188
    const/4 v4, 0x1

    return v4

    .line 192
    .end local v0    # "id":I
    .end local v1    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :catch_8e
    move-exception v0

    .line 193
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    goto :goto_95

    .line 189
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_93
    move-exception v0

    .line 194
    nop

    .line 196
    :goto_95
    const/4 v0, 0x0

    return v0
.end method

.method public static final loadProvinceDetails()V
    .registers 10

    .line 499
    const-string v0, "ProvinceDetails.json"

    const-string v1, "data/"

    const-string v2, "map/"

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    :try_start_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1f

    .line 500
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setShiftX(I)V

    .line 501
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setShiftY(I)V

    .line 499
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 504
    .end local v3    # "i":I
    :cond_1f
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

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_143

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 507
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 508
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 510
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 511
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;

    .line 513
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v8

    if-lt v7, v8, :cond_99

    .line 514
    goto :goto_7c

    .line 517
    :cond_99
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->co:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setContinent(I)V

    .line 518
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->re:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setGeoRegion(I)V

    .line 519
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->tr:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    .line 520
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->lp:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    .line 521
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->rs:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setResourceID(I)V

    .line 523
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->bd:F

    iput v8, v7, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    .line 524
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->gr:F

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setGrowthRate(F)V

    .line 526
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->sx:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v8, v8, v9

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setShiftX(I)V

    .line 527
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v8, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->sy:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v8, v8, v9

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setShiftY(I)V

    .line 529
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->updateSeaProvince()V

    .line 531
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v7

    if-eqz v7, :cond_126

    .line 532
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    goto :goto_13c

    .line 534
    :cond_126
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    if-nez v7, :cond_13c

    .line 535
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    .line 538
    :cond_13c
    :goto_13c
    nop

    .line 539
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;
    goto/16 :goto_7c

    .line 541
    :cond_13f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_142
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_142} :catch_144

    .line 542
    nop

    .line 546
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_143
    goto :goto_148

    .line 544
    :catch_144
    move-exception v0

    .line 545
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 547
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_148
    return-void
.end method

.method public static final loadProvinceMapData()V
    .registers 0

    .line 489
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvinceDetails()V

    .line 490
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->buildLevelOfPort()V

    .line 491
    return-void
.end method

.method public static final loadProvinceNamesPoints()V
    .registers 9

    .line 627
    const-string v0, "ProvinceNamePoints.json"

    const-string v1, "data/"

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

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 630
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 631
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 633
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 634
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;

    .line 638
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    sget v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_82

    .line 639
    const/4 v6, 0x0

    .local v6, "nData":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    goto :goto_c9

    .line 642
    .end local v6    # "nData":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    :cond_82
    new-instance v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;-><init>()V

    .line 644
    .restart local v6    # "nData":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 645
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fX2:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 646
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fY:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 647
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fY2:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 648
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->cx:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 649
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->cy:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 652
    :goto_c9
    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    nop

    .line 655
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;
    .end local v6    # "nData":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    goto :goto_63

    .line 657
    :cond_d0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_d3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_d3} :catch_d5

    .line 658
    nop

    .line 662
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_d4
    goto :goto_d9

    .line 660
    :catch_d5
    move-exception v0

    .line 661
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 663
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_d9
    return-void
.end method

.method public static final loadProvincePoints()Z
    .registers 2

    .line 53
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePointsFileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePointsFileID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePoints(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 54
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 60
    goto :goto_1b

    .line 58
    :catch_17
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method private static final loadProvincePoints(I)Z
    .registers 14
    .param p0, "id"    # I

    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ProvincePoints/ProvincePoints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez p0, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_37
    const-string v1, ""

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 69
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 72
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v4, "Data"

    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    const-class v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    .line 75
    .local v3, "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 77
    .local v4, "tempProvinceID":I
    iget-object v5, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;->Data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_100

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 78
    .local v6, "e":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;

    .line 80
    .local v7, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    new-instance v9, Laoc/kingdoms/lukasz/map/province/Province;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "tempProvinceID":I
    .local v10, "tempProvinceID":I
    iget-object v11, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;->pX:Ljava/util/List;

    iget-object v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;->pY:Ljava/util/List;

    invoke-direct {v9, v4, v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fc} :catch_105

    .line 93
    nop

    .line 94
    .end local v6    # "e":Ljava/lang/Object;
    .end local v7    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;
    move v4, v10

    goto/16 :goto_71

    .line 96
    .end local v10    # "tempProvinceID":I
    .restart local v4    # "tempProvinceID":I
    :cond_100
    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x0

    .line 98
    const/4 v1, 0x0

    .line 99
    const/4 v5, 0x1

    return v5

    .line 100
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;
    .end local v4    # "tempProvinceID":I
    :catch_105
    move-exception v0

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public static final loadProvincePoints_Cut()V
    .registers 2

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/16 v1, 0x1388

    if-ge v0, v1, :cond_1b

    .line 112
    :try_start_c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePoints_Cut(I)Z

    move-result v1
    :try_end_10
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_c .. :try_end_10} :catch_16

    if-nez v1, :cond_13

    .line 113
    goto :goto_1b

    .line 111
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 117
    .end local v0    # "i":I
    :catch_16
    move-exception v0

    .line 118
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 119
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_1b
    :goto_1b
    nop

    .line 120
    :goto_1c
    return-void
.end method

.method private static final loadProvincePoints_Cut(I)Z
    .registers 12
    .param p0, "id"    # I

    .line 124
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ProvincePoints_Cut/ProvincePoints_Cut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez p0, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_37
    const-string v1, ""

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 126
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 129
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v4, "Data"

    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 130
    const-class v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    .line 132
    .local v3, "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;
    iget-object v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;->Data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 133
    .local v5, "e":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;

    .line 135
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;->pX:Ljava/util/List;

    iget-object v10, v6, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;->pY:Ljava/util/List;

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_86} :catch_8b

    .line 137
    nop

    .line 138
    .end local v5    # "e":Ljava/lang/Object;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;
    goto :goto_6b

    .line 140
    :cond_88
    const/4 v3, 0x0

    .line 142
    const/4 v4, 0x1

    return v4

    .line 143
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;
    :catch_8b
    move-exception v0

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public static final loadScenarioAlliances()V
    .registers 10

    .line 291
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    .line 293
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 294
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 296
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 297
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 299
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_c3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_c3

    .line 300
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_78
    if-ltz v6, :cond_c3

    .line 301
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

    .line 302
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

    .line 300
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 305
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_c3
    goto :goto_50

    .line 307
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c7} :catch_c9

    .line 308
    nop

    .line 311
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_cd

    .line 309
    :catch_c9
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 312
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cd
    return-void
.end method

.method public static final loadScenarioAlliancesSpecial()V
    .registers 7

    .line 366
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlliancesSpecial.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 368
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 369
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 371
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_73

    .line 372
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 373
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    .line 375
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    nop

    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;
    goto :goto_58

    .line 379
    :cond_73
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_80

    .line 382
    nop

    .line 385
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_84

    .line 383
    :catch_80
    move-exception v0

    .line 384
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 386
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_84
    return-void
.end method

.method public static final loadScenarioArmies()V
    .registers 12

    .line 203
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Armies.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 205
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 206
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 208
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 209
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;

    .line 211
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ProvinceID:I

    if-ltz v6, :cond_cd

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ProvinceID:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_cd

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_cd

    .line 212
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->UnitTypeID:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_88
    if-ge v7, v8, :cond_ad

    .line 215
    new-instance v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->UnitTypeID:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ArmyID:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 218
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_ad
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_cd

    .line 219
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    iget v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ProvinceID:I

    invoke-direct {v8, v9, v10, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 223
    .end local v6    # "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :cond_cd
    nop

    .line 224
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;
    goto :goto_50

    .line 226
    :cond_cf
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d2} :catch_d4

    .line 227
    nop

    .line 230
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_d8

    .line 228
    :catch_d4
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d8
    return-void
.end method

.method public static final loadScenarioBuildings()V
    .registers 12

    .line 237
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Buildings.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 239
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 240
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 242
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 243
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;

    .line 245
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    if-ltz v6, :cond_ae

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_ae

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_ae

    .line 246
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_83
    if-ge v6, v7, :cond_ae

    .line 247
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    new-instance v9, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b0:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b1:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding_LoadScenario(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 250
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_ae
    goto :goto_50

    .line 252
    :cond_af
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b2} :catch_b4

    .line 253
    nop

    .line 256
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_b8

    .line 254
    :catch_b4
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 257
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b8
    return-void
.end method

.method public static final loadScenarioDefensive()V
    .registers 10

    .line 316
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    .line 318
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 319
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 321
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 322
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 324
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_c3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_c3

    .line 325
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_78
    if-ltz v6, :cond_c3

    .line 326
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

    .line 327
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

    .line 325
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 330
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_c3
    goto :goto_50

    .line 332
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c7} :catch_c9

    .line 333
    nop

    .line 336
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_cd

    .line 334
    :catch_c9
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 337
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cd
    return-void
.end method

.method public static final loadScenarioGuarantee()V
    .registers 10

    .line 439
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    .line 441
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 442
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 444
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 445
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 447
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_c3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_c3

    .line 448
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_78
    if-ltz v6, :cond_c3

    .line 449
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

    .line 450
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

    .line 448
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 453
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_c3
    goto :goto_50

    .line 455
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c7} :catch_c9

    .line 456
    nop

    .line 459
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_cd

    .line 457
    :catch_c9
    move-exception v0

    .line 458
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 460
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cd
    return-void
.end method

.method public static final loadScenarioMilitaryAccess()V
    .registers 10

    .line 415
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    .line 417
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 418
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 420
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 421
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 423
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_a0

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_a0

    .line 424
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_78
    if-ltz v6, :cond_a0

    .line 425
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

    .line 424
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 428
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_a0
    goto :goto_50

    .line 430
    :cond_a1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a4} :catch_a6

    .line 431
    nop

    .line 434
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_aa

    .line 432
    :catch_a6
    move-exception v0

    .line 433
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 435
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_aa
    return-void
.end method

.method public static final loadScenarioNonAggression()V
    .registers 10

    .line 390
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    .line 392
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 393
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 395
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 396
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 398
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_c3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_c3

    .line 399
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_78
    if-ltz v6, :cond_c3

    .line 400
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

    .line 401
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

    .line 399
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 404
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_c3
    goto :goto_50

    .line 406
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c7} :catch_c9

    .line 407
    nop

    .line 410
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_cd

    .line 408
    :catch_c9
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 411
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cd
    return-void
.end method

.method public static final loadScenarioRelations()V
    .registers 11

    .line 263
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    .line 265
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 266
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 268
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 269
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;

    .line 271
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    if-lez v6, :cond_a3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_a3

    .line 272
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->w:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_78
    if-ltz v6, :cond_a3

    .line 273
    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    iget-object v9, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->w:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->r:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    .line 272
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 277
    .end local v6    # "i":I
    :cond_a3
    nop

    .line 278
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    goto :goto_50

    .line 280
    :cond_a5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a8} :catch_aa

    .line 281
    nop

    .line 284
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_ae

    .line 282
    :catch_aa
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 285
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ae
    return-void
.end method

.method public static final loadScenarioTruces()V
    .registers 10

    .line 341
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Truces.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 343
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 344
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 346
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 347
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    .line 349
    .local v5, "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    if-lez v6, :cond_c3

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_c3

    .line 350
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_78
    if-ltz v6, :cond_c3

    .line 351
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

    .line 352
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

    .line 350
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 355
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    .end local v6    # "i":I
    :cond_c3
    goto :goto_50

    .line 357
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c7} :catch_c9

    .line 358
    nop

    .line 361
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_cd

    .line 359
    :catch_c9
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 362
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cd
    return-void
.end method

.method public static final update(II)V
    .registers 4
    .param p0, "province1"    # I
    .param p1, "province2"    # I

    .line 566
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 567
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    goto :goto_33

    .line 570
    :cond_13
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 571
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringSeaProvince(I)V

    .line 572
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    goto :goto_33

    .line 575
    :cond_2c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    .line 579
    :goto_33
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 580
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    goto :goto_65

    .line 583
    :cond_45
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 584
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringSeaProvince(I)V

    .line 585
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    goto :goto_65

    .line 588
    :cond_5e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    .line 591
    :goto_65
    return-void
.end method
