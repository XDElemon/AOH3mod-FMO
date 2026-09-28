.class public Laoc/kingdoms/lukasz/map/BuildingsManager;
.super Ljava/lang/Object;
.source "BuildingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;,
        Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;
    }
.end annotation


# static fields
.field public static AAA_BUILDING_ID:I = -0x1

.field public static AIRPORT_BUILDING_ID:I = -0x1

.field public static final GROUP_CAPITAL:I = 0x3

.field public static LONGRADAR_BUILDING_ID:I = -0x1

.field public static RADAR_BUILDING_ID:I = -0x1

.field public static buildingImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static buildingSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static buildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;",
            ">;"
        }
    .end annotation
.end field

.field public static buildingsResourceSize:I

.field public static buildingsResourceStartID:I

.field public static buildingsSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    .line 28
    sput v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    .line 29
    sput v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadBuildings()V
    .registers 13

    .line 114
    const-string v0, "Buildings"

    const/4 v1, 0x0

    .line 117
    .local v1, "id":I
    :try_start_3
    const-string v2, "game/buildings/Buildings.json"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 119
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "fileContent":Ljava/lang/String;
    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 122
    .local v4, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v5, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;

    const-class v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    invoke-virtual {v4, v5, v0, v6}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 123
    const-class v5, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;

    .line 125
    .local v5, "data":Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;
    iget-object v6, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;->Buildings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 126
    .local v7, "e":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    .line 128
    .local v8, "dataBuilding":Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    if-eqz v9, :cond_58

    .line 129
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "a":I
    :goto_3d
    if-ltz v9, :cond_58

    .line 130
    iget-object v10, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    iget-object v11, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v11, v11, v9

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BuildingsCost:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    aput v11, v10, v9

    .line 129
    add-int/lit8 v9, v9, -0x1

    goto :goto_3d

    .line 134
    .end local v9    # "a":I
    :cond_58
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz v9, :cond_7a

    .line 135
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .restart local v9    # "a":I
    :goto_61
    if-ltz v9, :cond_7a

    .line 136
    iget-object v10, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    iget-object v11, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v11, v11, v9

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BuildingsMaintenanceCost:F

    mul-float v11, v11, v12

    aput v11, v10, v9

    .line 135
    add-int/lit8 v9, v9, -0x1

    goto :goto_61

    .line 140
    .end local v9    # "a":I
    :cond_7a
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTime:[I

    if-eqz v9, :cond_9e

    .line 141
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTime:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .restart local v9    # "a":I
    :goto_83
    if-ltz v9, :cond_9e

    .line 142
    iget-object v10, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTime:[I

    iget-object v11, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTime:[I

    aget v11, v11, v9

    int-to-float v11, v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BuildingsConstructionTime:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    aput v11, v10, v9

    .line 141
    add-int/lit8 v9, v9, -0x1

    goto :goto_83

    .line 146
    .end local v9    # "a":I
    :cond_9e
    sget-object v9, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v9, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "\u7a7a\u519b\u57fa\u5730"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c6

    sput v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    :cond_c6
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "\u96f7\u8fbe"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d5

    sput v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    :cond_d5
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "\u53cd\u5bfc\u9635\u5730"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    sput v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    :cond_e4
    iget-object v9, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "\u4e2d\u5c42\u53cd\u5bfc\u96f7\u8fbe"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f3

    sput v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I
    :try_end_f3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_f3} :catch_fa

    .line 148
    :cond_f3
    nop

    .end local v7    # "e":Ljava/lang/Object;
    .end local v8    # "dataBuilding":Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;
    add-int/lit8 v1, v1, 0x1

    .line 149
    goto/16 :goto_27

    .line 151
    :cond_f8
    nop

    .line 154
    .end local v2    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "fileContent":Ljava/lang/String;
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v5    # "data":Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;
    goto :goto_fe

    .line 152
    :catch_fa
    move-exception v2

    .line 153
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 156
    .end local v2    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_fe
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    .line 157
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    sput v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    .line 160
    :try_start_10a
    const-string v2, "game/buildings/BuildingsResources.json"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 162
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "fileContent":Ljava/lang/String;
    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 165
    .restart local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    const-class v5, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;

    const-class v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    invoke-virtual {v4, v5, v0, v6}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 166
    const-class v0, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;

    invoke-virtual {v4, v0, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;

    .line 168
    .local v0, "data":Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;
    iget-object v5, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;->Buildings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_158

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 169
    .local v6, "e":Ljava/lang/Object;
    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    move-object v8, v6

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_154
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_10a .. :try_end_154} :catch_15a

    .line 171
    nop

    .end local v6    # "e":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 172
    goto :goto_12e

    .line 174
    :cond_158
    nop

    .line 177
    .end local v0    # "data":Laoc/kingdoms/lukasz/map/BuildingsManager$ConfigBuildingsData;
    .end local v2    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "fileContent":Ljava/lang/String;
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    goto :goto_15e

    .line 175
    :catch_15a
    move-exception v0

    .line 176
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_15e
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_167
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v0, v2, :cond_1cd

    .line 182
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    if-nez v2, :cond_1ca

    .line 183
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    .line 185
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18f
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1ca

    .line 186
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_18f

    .line 181
    .end local v2    # "j":I
    :cond_1ca
    add-int/lit8 v0, v0, 0x1

    goto :goto_167

    .line 192
    .end local v0    # "i":I
    :cond_1cd
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1ce
    :try_start_1ce
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v0, v2, :cond_205

    .line 193
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_1d3
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_202

    .line 194
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1ff} :catch_206

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d3

    .line 192
    .end local v2    # "j":I
    :cond_202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ce

    .line 199
    .end local v0    # "i":I
    :cond_205
    goto :goto_20a

    .line 197
    :catch_206
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_20a
    invoke-static {}, Laoc/kingdoms/lukasz/map/BuildingsManager;->loadBuildingsImages()V

    .line 202
    return-void
.end method

.method public static final loadBuildingsImages()V
    .registers 10

    .line 206
    const-string v0, ".png"

    const-string v1, "game/buildings/buildingsImages/"

    :try_start_4
    const-string v2, "game/buildings/buildingsImages/numOfImages.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 207
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, "numOfImages":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_9f

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 211
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 214
    :cond_6c
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9b} :catch_a0

    .line 209
    :goto_9b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    .line 219
    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "numOfImages":I
    .end local v4    # "i":I
    :cond_9f
    goto :goto_a4

    .line 217
    :catch_a0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 220
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a4
    return-void
.end method
