.class public Laoc/kingdoms/lukasz/jakowski/AmbienceManager;
.super Ljava/lang/Object;
.source "AmbienceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;
    }
.end annotation


# static fields
.field public static activeNew:I

.field public static activeOld:I

.field public static ambiences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;",
            ">;"
        }
    .end annotation
.end field

.field public static lastPosX:I

.field public static lastPosY:I

.field public static lastProvinceID:I


# instance fields
.field public VOLUME_TIME:J

.field public VOLUME_TIME_DOWN:J

.field public lSounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/audio/Music;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    .line 21
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME:J

    .line 15
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME_DOWN:J

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static final getFileExtension()Ljava/lang/String;
    .registers 1

    .line 266
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isiOS:Z

    if-eqz v0, :cond_7

    const-string v0, "mp3"

    goto :goto_9

    :cond_7
    const-string v0, "ogg"

    :goto_9
    return-object v0
.end method


# virtual methods
.method public final addSoundSFX(Ljava/lang/String;)I
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 257
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio/ambience/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 260
    goto :goto_27

    .line 258
    :catch_23
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 262
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_27
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public loadAmbience()Z
    .registers 2

    .line 49
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_LOAD_AMBIENCE:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final loadSounds()V
    .registers 9

    .line 53
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->loadAmbience()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 54
    const-string v0, "audio/ambience/AoH.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 55
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "tList":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_48

    .line 59
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->getFileExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, p0, v6}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;-><init>(Laoc/kingdoms/lukasz/jakowski/AmbienceManager;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 62
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "tempT":Ljava/lang/String;
    .end local v2    # "tList":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_48
    return-void
.end method

.method public final update()V
    .registers 12

    .line 65
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->loadAmbience()Z

    move-result v0

    if-nez v0, :cond_7

    .line 66
    return-void

    .line 70
    :cond_7
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_9
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->AMBIENCE_SCALE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12f

    .line 71
    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastPosX:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3

    if-ne v2, v3, :cond_2b

    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastPosY:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    if-eq v2, v3, :cond_12f

    .line 72
    :cond_2b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastPosX:I

    .line 73
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastPosY:I

    .line 75
    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastProvinceID:I

    if-ltz v2, :cond_75

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastProvinceID:I

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_IsMouseOverAProvinceID(III)Z

    move-result v2

    if-eqz v2, :cond_75

    goto/16 :goto_12f

    .line 79
    :cond_75
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    .line 81
    .local v2, "nProvinceID":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastProvinceID:I

    if-eq v2, v3, :cond_12f

    if-ltz v2, :cond_12f

    .line 82
    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v4, v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Ambience:I

    if-eq v3, v4, :cond_125

    .line 83
    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    if-gez v3, :cond_d0

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    if-ltz v3, :cond_d0

    .line 84
    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    goto :goto_10f

    .line 86
    :cond_d0
    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    if-ltz v3, :cond_10f

    .line 87
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 88
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 89
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 91
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v3}, Lcom/badlogic/gdx/audio/Music;->pause()V

    .line 94
    :cond_10f
    :goto_10f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v3, v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Ambience:I

    sput v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    .line 97
    :cond_125
    sput v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lastProvinceID:I

    .line 99
    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    if-ne v3, v4, :cond_12f

    .line 100
    sput v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12f} :catch_130

    .line 108
    .end local v2    # "nProvinceID":I
    :cond_12f
    :goto_12f
    goto :goto_134

    .line 106
    :catch_130
    move-exception v2

    .line 107
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 112
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_134
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_138
    sget v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    if-ltz v5, :cond_20d

    .line 113
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    if-eqz v5, :cond_20d

    .line 114
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateTime:Z

    if-eqz v5, :cond_17e

    .line 115
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateTime:Z

    .line 116
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v4, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 117
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v6, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    .line 120
    :cond_17e
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/audio/Music;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v6, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ambienceVolume:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v7, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v6, v6, v7

    sget-wide v7, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-wide v9, v9, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    iget-wide v8, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME_DOWN:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    sub-float v7, v2, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v6, v6, v7

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 122
    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-wide v7, v7, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_20d

    .line 123
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 124
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 125
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 127
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v5}, Lcom/badlogic/gdx/audio/Music;->pause()V

    .line 129
    sput v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeOld:I
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_20d} :catch_20e

    .line 135
    :cond_20d
    goto :goto_212

    .line 133
    :catch_20e
    move-exception v5

    .line 134
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 138
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_212
    :try_start_212
    sget v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    if-ltz v5, :cond_44b

    .line 139
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->AMBIENCE_SCALE:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_37b

    .line 140
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->startedPlaying:Z

    if-nez v0, :cond_29f

    .line 141
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v4, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->startedPlaying:Z

    .line 142
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v4, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 144
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 145
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 146
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 148
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    goto/16 :goto_44b

    .line 150
    :cond_29f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    if-nez v0, :cond_303

    .line 151
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v4, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 152
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v4, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 154
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 155
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 157
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    goto/16 :goto_44b

    .line 159
    :cond_303
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    if-eqz v0, :cond_44b

    .line 160
    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-wide v7, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_332

    .line 161
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 164
    :cond_332
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Music;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ambienceVolume:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v3

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-wide v7, v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    iget-wide v5, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME:J

    long-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 167
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v4, v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateTime:Z

    goto/16 :goto_44b

    .line 171
    :cond_37b
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    if-eqz v5, :cond_44b

    .line 172
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateTime:Z

    if-eqz v5, :cond_3bd

    .line 173
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateTime:Z

    .line 174
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v4, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 175
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v5, v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    .line 178
    :cond_3bd
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/audio/Music;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v5, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ambienceVolume:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v6, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v5, v5, v6

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-wide v8, v8, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget-wide v7, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME_DOWN:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v5, v5, v2

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 180
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->VOLUME_TIME:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_44b

    .line 181
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 182
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 183
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 185
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->lSounds:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->ambiences:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->pause()V

    .line 187
    sput v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->activeNew:I
    :try_end_44b
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_44b} :catch_44c

    .line 194
    :cond_44b
    :goto_44b
    goto :goto_450

    .line 192
    :catch_44c
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 251
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_450
    return-void
.end method
