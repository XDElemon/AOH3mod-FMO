.class public Laoc/kingdoms/lukasz/map/map/Map_Data;
.super Ljava/lang/Object;
.source "Map_Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;
    }
.end annotation


# instance fields
.field public Folder:Ljava/lang/String;

.field public Icon:Laoc/kingdoms/lukasz/textures/Image;

.field public mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "MAP_TAG"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    .line 73
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->Folder:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 76
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->highTextueSettings()Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "Config.json"

    goto :goto_31

    :cond_2f
    const-string v4, "ConfigLow.json"

    :goto_31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 77
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v4, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    .line 80
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    const/4 v5, 0x3

    if-ge v4, v5, :cond_89

    .line 81
    :try_start_4b
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v6, v6, v4

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    aput v6, v5, v4

    .line 82
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v6, v6, v4

    div-float/2addr v6, v7

    aput v6, v5, v4

    .line 83
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v6, v6, v4

    div-float/2addr v6, v7

    aput v6, v5, v4

    .line 84
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    aget v6, v6, v4

    div-float/2addr v6, v7

    aput v6, v5, v4
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_81} :catch_84

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 86
    .end local v4    # "i":I
    :catch_84
    move-exception v4

    .line 87
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_8a

    .line 88
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_89
    nop

    .line 90
    :goto_8a
    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "icon.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->Icon:Laoc/kingdoms/lukasz/textures/Image;

    .line 91
    return-void
.end method
