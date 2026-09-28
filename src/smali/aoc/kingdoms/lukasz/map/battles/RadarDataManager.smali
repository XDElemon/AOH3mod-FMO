.class public final Laoc/kingdoms/lukasz/map/battles/RadarDataManager;
.super Ljava/lang/Object;


# static fields
.field private static improved:[Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ImprovedData;

.field public static loaded:Z

.field public static types:[Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->loaded:Z

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->improved:[Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ImprovedData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRange(Ljava/lang/String;)F
    .registers 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getTypeByName(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->Range:F

    return v1

    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public static getTypeByName(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;
    .registers 4

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    aget-object v2, v0, v1

    if-eqz v2, :cond_17

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->Name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    aget-object v2, v0, v1

    return-object v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static load()V
    .registers 9

    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->loaded:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v0, "game/RadarConfig.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v4, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ConfigRadarData;

    const-string v0, "RadarTypes"

    const-class v5, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;

    invoke-virtual {v3, v4, v0, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v4, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ConfigRadarData;

    const-string v0, "ImprovedBy"

    const-class v5, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ImprovedData;

    invoke-virtual {v3, v4, v0, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v4, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ConfigRadarData;

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ConfigRadarData;

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ConfigRadarData;->RadarTypes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;

    sput-object v6, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;

    const/4 v7, 0x0

    :goto_39
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_4a
    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ConfigRadarData;->ImprovedBy:Ljava/util/ArrayList;

    if-eqz v5, :cond_68

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ImprovedData;

    sput-object v6, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->improved:[Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ImprovedData;

    const/4 v7, 0x0

    :goto_57
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_68

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$ImprovedData;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_57
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_68} :catch_69

    :cond_68
    goto :goto_6d

    :catch_69
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_6d
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->loaded:Z

    return-void
.end method
