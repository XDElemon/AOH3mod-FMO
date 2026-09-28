.class public Laoc/kingdoms/lukasz/map/terrain/TerrainManager;
.super Ljava/lang/Object;
.source "TerrainManager.java"


# static fields
.field public static terrainSmallHeight:I

.field public static terrainSmallWidth:I


# instance fields
.field public terrainImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field public terrains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/terrain/Terrain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallWidth:I

    .line 24
    sput v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallHeight:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    return-void
.end method

.method private final loadTerrainImages()V
    .registers 10

    .line 63
    const-string v0, "game/terrain/terrainImages/"

    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_9
    if-ge v1, v2, :cond_e6

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "nImages":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/textures/Image;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_11
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/terrain/Terrain;->ImageFile:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_dd

    .line 68
    :try_start_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->ImageFile:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 69
    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->ImageFile:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 72
    :cond_7f
    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->ImageFile:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1e .. :try_end_b0} :catch_b1

    .line 76
    :goto_b0
    goto :goto_d9

    .line 74
    :catch_b1
    move-exception v5

    .line 75
    .local v5, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "notFound.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    invoke-direct {v6, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v5    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_d9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    .line 79
    .end local v4    # "a":I
    :cond_dd
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v3    # "nImages":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/textures/Image;>;"
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 82
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_e6
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 83
    .local v0, "iconScale":F
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallWidth:I

    .line 84
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallHeight:I

    .line 85
    return-void
.end method


# virtual methods
.method public getBattleTerrain(I)I
    .registers 3
    .param p1, "terrainID"    # I

    .line 90
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v0, v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BattleOver:I

    packed-switch v0, :pswitch_data_1a

    .line 99
    :pswitch_d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleOver2:I

    return v0

    .line 96
    :pswitch_10
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleOver3:I

    return v0

    .line 94
    :pswitch_13
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleOver1:I

    return v0

    .line 92
    :pswitch_16
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public final loadTerrains()V
    .registers 12

    .line 30
    :try_start_0
    const-string v0, "game/terrain/TerrainTypes.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 32
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 35
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v4, "Data"

    const-class v5, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-class v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    .line 38
    .local v3, "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;
    iget-object v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;->Data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 39
    .local v5, "e":Ljava/lang/Object;
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    move-object v8, v5

    check-cast v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_39} :catch_c4

    .line 42
    :try_start_39
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Name:Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_61} :catch_62
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_39 .. :try_end_61} :catch_c4

    .line 45
    goto :goto_63

    .line 43
    :catch_62
    move-exception v6

    .line 46
    .end local v5    # "e":Ljava/lang/Object;
    :goto_63
    goto :goto_26

    .line 48
    :cond_64
    const/4 v4, 0x0

    .local v4, "i":I
    :try_start_65
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_6b
    if-ge v4, v5, :cond_bf

    .line 49
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v8, v10

    aput v8, v7, v9

    .line 50
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    aget v8, v8, v6

    div-float/2addr v8, v10

    aput v8, v7, v6

    .line 51
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    div-float/2addr v8, v10

    aput v8, v7, v9

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 54
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_bf
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->loadTerrainImages()V
    :try_end_c3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_65 .. :try_end_c3} :catch_c4

    .line 59
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;
    goto :goto_c8

    .line 57
    :catch_c4
    move-exception v0

    .line 58
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_c8
    return-void
.end method
