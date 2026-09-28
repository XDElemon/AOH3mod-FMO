.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;
.super Ljava/lang/Object;
.source "SaveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    }
.end annotation


# static fields
.field public static final iNeighboringProvincesPerFile:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getJson()Lcom/badlogic/gdx/utils/Json;
    .registers 2

    .line 24
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 25
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setTypeName(Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setUsePrototypes(Z)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setIgnoreUnknownFields(Z)V

    .line 28
    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 30
    return-object v0
.end method

.method public static final saveFormableCiv()V
    .registers 17

    .line 657
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    .line 659
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Laoc/kingdoms/lukasz/map/FormableCivManager$ConfigJson;

    const-string v2, "Data"

    const-class v3, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 661
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

    const-string v4, "data/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 662
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v5, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 666
    const-string v5, ""

    .line 668
    .local v5, "tList":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AoH.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    const-string v9, ".txt;"

    if-eqz v7, :cond_f5

    .line 669
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 671
    .local v7, "file2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    .line 672
    .local v10, "tempTags":Ljava/lang/String;
    move-object v5, v10

    .line 674
    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 676
    .local v11, "tSplited":[Ljava/lang/String;
    const/4 v12, 0x1

    .line 678
    .local v12, "add":Z
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v14, v11

    .local v14, "iSize":I
    :goto_ae
    if-ge v13, v14, :cond_d7

    .line 679
    aget-object v15, v11, v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v16, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v0, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 680
    const/4 v12, 0x0

    .line 681
    goto :goto_d9

    .line 678
    :cond_d1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    const/4 v6, 0x0

    goto :goto_ae

    .end local v16    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_d7
    move-object/from16 v16, v0

    .line 685
    .end local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v13    # "i":I
    .end local v14    # "iSize":I
    .restart local v16    # "json":Lcom/badlogic/gdx/utils/Json;
    :goto_d9
    if-eqz v12, :cond_f4

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 688
    .end local v7    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10    # "tempTags":Ljava/lang/String;
    .end local v11    # "tSplited":[Ljava/lang/String;
    .end local v12    # "add":Z
    :cond_f4
    goto :goto_110

    .line 690
    .end local v16    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_f5
    move-object/from16 v16, v0

    .end local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16    # "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 693
    :goto_110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 694
    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 695
    return-void
.end method

.method public static final saveProvinceDetails()V
    .registers 6

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_ae

    .line 339
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;-><init>()V

    .line 341
    .local v2, "provinceDetails":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v3

    const/4 v4, -0x1

    if-lt v3, v4, :cond_3f

    .line 342
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2e

    .line 343
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    .line 346
    :cond_2e
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v3

    if-nez v3, :cond_3f

    .line 347
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setContinent(I)V

    .line 351
    :cond_3f
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->pid:I

    .line 352
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->co:I

    .line 353
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGeoRegion()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->re:I

    .line 354
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->tr:I

    .line 355
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->lp:I

    .line 356
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->gr:F

    .line 357
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->bd:F

    .line 358
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->rs:I

    .line 359
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->sx:I

    .line 360
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->sy:I

    .line 362
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v2    # "provinceDetails":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 365
    .end local v1    # "i":I
    :cond_ae
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 367
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v3, "Data"

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvincePoints;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ProvinceDetails.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 371
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 372
    return-void
.end method

.method public static final saveProvinceNamesPoints()V
    .registers 5

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v0, "tempData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_af

    .line 588
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;-><init>()V

    .line 590
    .local v2, "provincePoints":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 591
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->pid:I

    .line 592
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    .line 593
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fY:F

    .line 594
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fX2:F

    .line 595
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fY2:F

    .line 596
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->cx:F

    .line 597
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->cy:F

    goto :goto_a8

    .line 601
    :cond_88
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->pid:I

    .line 602
    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    .line 603
    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fY:F

    .line 604
    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fX2:F

    .line 605
    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->fY2:F

    .line 606
    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->cx:F

    .line 607
    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;->cy:F

    .line 610
    :goto_a8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v2    # "provincePoints":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 613
    .end local v1    # "i":I
    :cond_af
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 615
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v3, "Data"

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceNamesPoints;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ProvinceNamePoints.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 619
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 620
    return-void
.end method

.method public static final saveProvinceNeighboringProvinces()V
    .registers 15

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;>;"
    const/4 v1, 0x0

    .line 382
    .local v1, "tAdded":I
    const/4 v2, 0x0

    .line 395
    .local v2, "fileID":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    const/4 v5, 0x0

    const-string v6, ".json"

    const-string v7, "_"

    const-string v8, ""

    const-string v9, "ProvinceNeighboringProvinces/ProvinceNeighboringProvinces"

    const-string v10, "data/"

    const-string v11, "map/"

    const-string v12, "Data"

    if-ge v3, v4, :cond_16e

    .line 396
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1e
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v13

    if-ge v4, v13, :cond_6e

    .line 397
    new-instance v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;

    invoke-direct {v13}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;-><init>()V

    .line 399
    .local v13, "provinceNeighboringProvince":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    iput v3, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->pid:I

    .line 400
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    iput v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->wp:I

    .line 402
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    iput-object v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->px:Ljava/util/List;

    .line 403
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    iput-object v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->py:Ljava/util/List;

    .line 405
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    nop

    .end local v13    # "provinceNeighboringProvince":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    add-int/lit8 v1, v1, 0x1

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 410
    .end local v4    # "j":I
    :cond_6e
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6f
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySeaSize()I

    move-result v13

    if-ge v4, v13, :cond_bf

    .line 411
    new-instance v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;

    invoke-direct {v13}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;-><init>()V

    .line 413
    .restart local v13    # "provinceNeighboringProvince":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    iput v3, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->pid:I

    .line 414
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    iput v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->wp:I

    .line 416
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    iput-object v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->px:Ljava/util/List;

    .line 417
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    iput-object v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->py:Ljava/util/List;

    .line 419
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    nop

    .end local v13    # "provinceNeighboringProvince":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    add-int/lit8 v1, v1, 0x1

    .line 410
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 424
    .end local v4    # "j":I
    :cond_bf
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_c0
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySeaSize()I

    move-result v13

    if-ge v4, v13, :cond_110

    .line 425
    new-instance v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;

    invoke-direct {v13}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;-><init>()V

    .line 427
    .restart local v13    # "provinceNeighboringProvince":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    iput v3, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->pid:I

    .line 428
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    iput v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->wp:I

    .line 430
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    iput-object v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->px:Ljava/util/List;

    .line 431
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    iput-object v14, v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;->py:Ljava/util/List;

    .line 433
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    nop

    .end local v13    # "provinceNeighboringProvince":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;
    add-int/lit8 v1, v1, 0x1

    .line 424
    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    .line 438
    .end local v4    # "j":I
    :cond_110
    const/16 v4, 0x7d0

    if-lt v1, v4, :cond_16a

    .line 439
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v4

    .line 441
    .local v4, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-class v14, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;

    invoke-virtual {v4, v13, v12, v14}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 443
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-lez v2, :cond_14d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_14d
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 445
    .local v6, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    const/4 v1, 0x0

    .line 449
    add-int/lit8 v2, v2, 0x1

    .line 395
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v6    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_16a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 453
    .end local v3    # "i":I
    :cond_16e
    if-lez v1, :cond_1c3

    .line 454
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v3

    .line 456
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-class v13, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$Data_ProvinceBorder;

    invoke-virtual {v3, v4, v12, v13}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez v2, :cond_1a9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1a9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 460
    .local v4, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 462
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1c3
    return-void
.end method

.method public static final saveScenarioAlliances()V
    .registers 7

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "tData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 174
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 175
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;-><init>()V

    .line 176
    .local v2, "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    .line 178
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    .line 179
    .local v4, "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v4    # "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    goto :goto_31

    .line 183
    :cond_54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v2    # "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 187
    .end local v1    # "i":I
    :cond_5a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 189
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Alliances.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 190
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    const/4 v0, 0x0

    .line 194
    return-void
.end method

.method public static final saveScenarioAlliancesSpecial()V
    .registers 4

    .line 223
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    .line 225
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
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

    const-string v2, "scenarios/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AlliancesSpecial.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 226
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public static final saveScenarioArmies()V
    .registers 7

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_81

    .line 55
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_7e

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-lez v2, :cond_7e

    .line 57
    :try_start_21
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;-><init>()V

    .line 59
    .local v2, "tArmy":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ProvinceID:I

    .line 61
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v4, v5, :cond_6e

    .line 62
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->UnitTypeID:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->ArmyID:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 66
    .end local v4    # "j":I
    :cond_6e
    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;->UnitTypeID:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_79

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_79} :catch_7a

    .line 71
    .end local v2    # "tArmy":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Army;
    :cond_79
    goto :goto_7e

    .line 69
    :catch_7a
    move-exception v2

    .line 70
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 54
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 75
    .end local v1    # "i":I
    :cond_81
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 77
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
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

    const-string v4, "scenarios/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Armies.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 78
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public static final saveScenarioBuildings()V
    .registers 6

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_6e

    .line 94
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_6b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-lez v2, :cond_6b

    .line 96
    :try_start_1e
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;-><init>()V

    .line 98
    .local v2, "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->pid:I

    .line 100
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_26
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v3, v4, :cond_5b

    .line 101
    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b0:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b1:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 105
    .end local v3    # "j":I
    :cond_5b
    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;->b0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_66

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_66} :catch_67

    .line 110
    .end local v2    # "tData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Buildings;
    :cond_66
    goto :goto_6b

    .line 108
    :catch_67
    move-exception v2

    .line 109
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 93
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_6b
    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 114
    .end local v1    # "i":I
    :cond_6e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 116
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Buildings.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 117
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public static final saveScenarioCores()V
    .registers 6

    .line 519
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_8f

    .line 522
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_8b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_8b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_8b

    .line 523
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateHaveACore()V

    .line 525
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v2, :cond_43

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_8b

    .line 526
    :cond_43
    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;-><init>()V

    .line 528
    .local v2, "tCores":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;
    iput v1, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    .line 529
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    .line 531
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-nez v4, :cond_63

    .line 532
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 535
    :cond_63
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_64
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v3, v4, :cond_80

    .line 536
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 540
    .end local v3    # "j":I
    :cond_80
    :goto_80
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8b

    .line 541
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    .end local v2    # "tCores":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;
    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 547
    .end local v1    # "i":I
    :cond_8f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 549
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
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

    const-string v4, "scenarios/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Cores.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 550
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cf} :catch_d0

    .line 553
    .end local v0    # "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;>;"
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_d4

    .line 551
    :catch_d0
    move-exception v0

    .line 552
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 554
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d4
    return-void
.end method

.method public static final saveScenarioDefensive()V
    .registers 7

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "tData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 200
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 201
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;-><init>()V

    .line 202
    .local v2, "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    .line 204
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    .line 205
    .local v4, "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v4    # "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    goto :goto_31

    .line 209
    :cond_54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v2    # "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 213
    .end local v1    # "i":I
    :cond_5a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 215
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Defensive.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 216
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 219
    const/4 v0, 0x0

    .line 220
    return-void
.end method

.method public static final saveScenarioDetails()V
    .registers 5

    .line 468
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 471
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    .line 473
    .local v2, "tCivID":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    .line 474
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivID:I

    .line 475
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    .line 476
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->PCID:I

    .line 478
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    nop

    .end local v2    # "tCivID":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 481
    .end local v1    # "i":I
    :cond_41
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 482
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    new-instance v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivDataSerializer;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivDataSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 485
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    .line 488
    .end local v0    # "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;>;"
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_91

    .line 486
    :catch_8d
    move-exception v0

    .line 487
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 489
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_91
    return-void
.end method

.method public static final saveScenarioDetailsProvinces()V
    .registers 6

    .line 493
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 496
    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;-><init>()V

    .line 498
    .local v2, "tCivID":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    new-array v3, v3, [I

    .line 500
    .local v3, "tempProvinces":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1c
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 501
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    aput v5, v3, v4

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 504
    .end local v4    # "j":I
    :cond_33
    iput-object v3, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;->Provinces:[I

    .line 505
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    nop

    .end local v2    # "tCivID":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;
    .end local v3    # "tempProvinces":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 508
    .end local v1    # "i":I
    :cond_3c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 510
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DataProvinces.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 511
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    .line 514
    .end local v0    # "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;>;"
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_82

    .line 512
    :catch_7e
    move-exception v0

    .line 513
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 515
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_82
    return-void
.end method

.method public static final saveScenarioGuarantee()V
    .registers 7

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "tData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 311
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 312
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;-><init>()V

    .line 313
    .local v2, "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    .line 315
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    .line 316
    .local v4, "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v4    # "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    goto :goto_31

    .line 320
    :cond_54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v2    # "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 324
    .end local v1    # "i":I
    :cond_5a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 326
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Guarantee.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 327
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    const/4 v0, 0x0

    .line 331
    return-void
.end method

.method public static final saveScenarioMilitaryAccess()V
    .registers 7

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "tData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 285
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 286
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;-><init>()V

    .line 287
    .local v2, "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    .line 289
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    .line 290
    .local v4, "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v4    # "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    goto :goto_31

    .line 294
    :cond_54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v2    # "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 298
    .end local v1    # "i":I
    :cond_5a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 300
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MilitaryAccess.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 301
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    const/4 v0, 0x0

    .line 305
    return-void
.end method

.method public static final saveScenarioNonAggression()V
    .registers 7

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "tData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 259
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 260
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;-><init>()V

    .line 261
    .local v2, "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    .line 263
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    .line 264
    .local v4, "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v4    # "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    goto :goto_31

    .line 268
    :cond_54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v2    # "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 272
    .end local v1    # "i":I
    :cond_5a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 274
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NonAggression.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 275
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    const/4 v0, 0x0

    .line 279
    return-void
.end method

.method public static final saveScenarioRelations()V
    .registers 7

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "tData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 136
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_5f

    .line 137
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;-><init>()V

    .line 138
    .local v2, "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->c:I

    .line 140
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 141
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    goto :goto_31

    .line 145
    :cond_5c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v2    # "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Relations;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 149
    .end local v1    # "i":I
    :cond_62
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 151
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Relations.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 152
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v0, 0x0

    .line 156
    return-void
.end method

.method public static final saveScenarioReligion()V
    .registers 5

    .line 558
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v0, "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_6d

    .line 561
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_6a

    .line 562
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_6a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_6a

    .line 563
    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;-><init>()V

    .line 565
    .local v2, "tReligion":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;
    iput v1, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    .line 566
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->rel:I

    .line 568
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v2    # "tReligion":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 573
    .end local v1    # "i":I
    :cond_6d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 575
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Religions.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 576
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ae} :catch_af

    .line 579
    .end local v0    # "tempDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;>;"
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_b3

    .line 577
    :catch_af
    move-exception v0

    .line 578
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 580
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b3
    return-void
.end method

.method public static final saveScenarioTruces()V
    .registers 7

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "tData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 233
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 234
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;-><init>()V

    .line 235
    .local v2, "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->pid:I

    .line 237
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    .line 238
    .local v4, "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->w0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;->t0:Ljava/util/List;

    iget v6, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v4    # "dData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    goto :goto_31

    .line 242
    :cond_54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v2    # "nData":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager$ScenarioData_Diplomacy;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 246
    .end local v1    # "i":I
    :cond_5a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 248
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Truces.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 249
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    const/4 v0, 0x0

    .line 253
    return-void
.end method

.method public static final saveScenariosList()V
    .registers 12

    .line 623
    const-string v0, ""

    .line 625
    .local v0, "tList":Ljava/lang/String;
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

    const-string v3, "Scenarios.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const-string v4, ";"

    if-eqz v1, :cond_83

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 628
    .local v1, "file2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, "tempTags":Ljava/lang/String;
    move-object v0, v5

    .line 631
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 633
    .local v6, "tSplited":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 635
    .local v7, "add":Z
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v9, v6

    .local v9, "iSize":I
    :goto_58
    if-ge v8, v9, :cond_69

    .line 636
    aget-object v10, v6, v8

    sget-object v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 637
    const/4 v7, 0x0

    .line 638
    goto :goto_69

    .line 635
    :cond_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 642
    .end local v8    # "i":I
    .end local v9    # "iSize":I
    :cond_69
    :goto_69
    if-eqz v7, :cond_82

    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    .end local v1    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "tempTags":Ljava/lang/String;
    .end local v6    # "tSplited":[Ljava/lang/String;
    .end local v7    # "add":Z
    :cond_82
    goto :goto_9a

    .line 647
    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    :goto_9a
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 651
    .local v1, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 652
    return-void
.end method
