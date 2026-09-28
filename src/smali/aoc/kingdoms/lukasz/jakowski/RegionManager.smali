.class public Laoc/kingdoms/lukasz/jakowski/RegionManager;
.super Ljava/lang/Object;
.source "RegionManager.java"


# instance fields
.field public iRegionsSize:I

.field public lRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    return-void
.end method


# virtual methods
.method public final disposeRegions()V
    .registers 2

    .line 96
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    .line 98
    return-void
.end method

.method public final getRegionID(I)I
    .registers 5
    .param p1, "nProvinceID"    # I

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    if-ge v0, v1, :cond_29

    .line 79
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 80
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    if-ne v2, p1, :cond_23

    .line 81
    return v0

    .line 79
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 78
    .end local v1    # "j":I
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "i":I
    :cond_29
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REGION ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AoC"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final loadRegions()V
    .registers 12

    .line 17
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    .line 20
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

    const-string v3, "data/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ProvinceOptimizationRegions.txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_105

    .line 21
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

    .line 22
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "sAllRegions":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v4, "tempAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_7a

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 31
    .end local v5    # "i":I
    :cond_7a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7b
    array-length v5, v3

    const/4 v6, 0x1

    if-ge v0, v5, :cond_c1

    .line 32
    aget-object v5, v3, v0

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "sRegion":[Ljava/lang/String;
    new-instance v7, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/jakowski/Region;-><init>()V

    .line 36
    .local v7, "newRegion":Laoc/kingdoms/lukasz/jakowski/Region;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_8d
    array-length v9, v5

    if-ge v8, v9, :cond_9c

    .line 37
    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/Region;->addProvince(I)V

    .line 36
    add-int/lit8 v8, v8, 0x1

    goto :goto_8d

    .line 40
    .end local v8    # "j":I
    :cond_9c
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_9d
    array-length v9, v5

    if-ge v8, v9, :cond_ae

    .line 41
    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v8, v8, 0x1

    goto :goto_9d

    .line 44
    .end local v8    # "j":I
    :cond_ae
    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    .line 31
    .end local v5    # "sRegion":[Ljava/lang/String;
    .end local v7    # "newRegion":Laoc/kingdoms/lukasz/jakowski/Region;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 48
    .end local v0    # "i":I
    :cond_c1
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Region;-><init>()V

    .line 49
    .local v0, "tempRegionOfProvincesWithoutIDs":Laoc/kingdoms/lukasz/jakowski/Region;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v5, v7, :cond_df

    .line 50
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_dc

    .line 51
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/jakowski/Region;->addProvince(I)V

    .line 49
    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_c7

    .line 54
    .end local v5    # "i":I
    :cond_df
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize2()I

    move-result v5

    if-lez v5, :cond_fc

    .line 55
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    iget-object v7, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    .line 59
    :cond_fc
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    .line 60
    .end local v0    # "tempRegionOfProvincesWithoutIDs":Laoc/kingdoms/lukasz/jakowski/Region;
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "sAllRegions":[Ljava/lang/String;
    .end local v4    # "tempAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    goto :goto_12f

    .line 62
    :cond_105
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Region;-><init>()V

    .line 64
    .local v1, "newRegion":Laoc/kingdoms/lukasz/jakowski/Region;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_117

    .line 65
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Region;->addProvince(I)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_10b

    .line 68
    .end local v2    # "i":I
    :cond_117
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    .line 71
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    .line 73
    .end local v1    # "newRegion":Laoc/kingdoms/lukasz/jakowski/Region;
    :goto_12f
    return-void
.end method

.method public final updateRegionsSize()V
    .registers 2

    .line 92
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    .line 93
    return-void
.end method
