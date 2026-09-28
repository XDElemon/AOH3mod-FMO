.class public Laoc/kingdoms/lukasz/map/LegacyManager;
.super Ljava/lang/Object;
.source "LegacyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;,
        Laoc/kingdoms/lukasz/map/LegacyManager$ConfigLegacyData;
    }
.end annotation


# static fields
.field public static iLegaciesSize:I

.field public static iLegacyGroupsSize:I

.field public static legacies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;",
            ">;"
        }
    .end annotation
.end field

.field public static legacyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static legacyImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static minLegacyCost:I

.field public static numOfLegaciesInGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyGroups:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegacyGroupsSize:I

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    .line 27
    sput v0, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    .line 29
    const v0, 0xf40f2

    sput v0, Laoc/kingdoms/lukasz/map/LegacyManager;->minLegacyCost:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->numOfLegaciesInGroup:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadLegacies()V
    .registers 10

    .line 597
    const-string v0, "game/legacies/LegaciesGroups.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 598
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "tGroups":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_24

    .line 601
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyGroups:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 603
    .end local v2    # "i":I
    :cond_24
    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegacyGroupsSize:I

    .line 606
    :try_start_2c
    const-string v2, "game/legacies/Legacies.json"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 608
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "fileContent":Ljava/lang/String;
    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 611
    .local v4, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v5, Laoc/kingdoms/lukasz/map/LegacyManager$ConfigLegacyData;

    const-string v6, "Legacy"

    const-class v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 612
    const-class v5, Laoc/kingdoms/lukasz/map/LegacyManager$ConfigLegacyData;

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$ConfigLegacyData;

    .line 614
    .local v5, "data":Laoc/kingdoms/lukasz/map/LegacyManager$ConfigLegacyData;
    iget-object v6, v5, Laoc/kingdoms/lukasz/map/LegacyManager$ConfigLegacyData;->Legacy:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 615
    .local v7, "e":Ljava/lang/Object;
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    move-object v9, v7

    check-cast v9, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2c .. :try_end_64} :catch_67

    .line 616
    nop

    .end local v7    # "e":Ljava/lang/Object;
    goto :goto_52

    .line 619
    .end local v2    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "fileContent":Ljava/lang/String;
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v5    # "data":Laoc/kingdoms/lukasz/map/LegacyManager$ConfigLegacyData;
    :cond_66
    goto :goto_6b

    .line 617
    :catch_67
    move-exception v2

    .line 618
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 620
    .end local v2    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_6b
    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    .line 623
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_74
    sget v3, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegacyGroupsSize:I

    if-ge v2, v3, :cond_85

    .line 624
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->numOfLegaciesInGroup:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 627
    .end local v2    # "i":I
    :cond_85
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_86
    sget v3, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    if-ge v2, v3, :cond_b8

    .line 628
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->numOfLegaciesInGroup:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GroupID:I

    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->numOfLegaciesInGroup:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v6, v6, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GroupID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 631
    .end local v2    # "i":I
    :cond_b8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b9
    sget v3, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    if-ge v2, v3, :cond_f0

    .line 632
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_ca
    if-ltz v3, :cond_ed

    .line 633
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    aget v4, v4, v3

    sget v5, Laoc/kingdoms/lukasz/map/LegacyManager;->minLegacyCost:I

    if-ge v4, v5, :cond_ea

    .line 634
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    aget v4, v4, v3

    sput v4, Laoc/kingdoms/lukasz/map/LegacyManager;->minLegacyCost:I

    .line 632
    :cond_ea
    add-int/lit8 v3, v3, -0x1

    goto :goto_ca

    .line 631
    .end local v3    # "j":I
    :cond_ed
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 639
    .end local v2    # "i":I
    :cond_f0
    invoke-static {}, Laoc/kingdoms/lukasz/map/LegacyManager;->loadLegacyImages()V

    .line 640
    return-void
.end method

.method public static final loadLegacyImages()V
    .registers 8

    .line 645
    const-string v0, "game/legacies/legaciesImages/numOfImages.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 646
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 648
    .local v1, "numOfImages":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_9f

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/legacies/legaciesImages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 650
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v4, v5, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 653
    :cond_6c
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v4, v5, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 656
    .end local v2    # "i":I
    :cond_9f
    return-void
.end method

.method public static final updateCivBonuses(III)V
    .registers 4
    .param p0, "i"    # I
    .param p1, "level"    # I
    .param p2, "iCivID"    # I

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/LegacyManager;->updateCivBonuses(IIIZ)V

    .line 37
    return-void
.end method

.method public static final updateCivBonuses(IIIZ)V
    .registers 8
    .param p0, "i"    # I
    .param p1, "level"    # I
    .param p2, "iCivID"    # I
    .param p3, "load"    # Z

    .line 40
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    if-eqz v0, :cond_40

    .line 41
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    .line 43
    if-lez p1, :cond_40

    if-nez p3, :cond_40

    .line 44
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    .line 47
    :cond_40
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    if-eqz v0, :cond_80

    .line 48
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 50
    if-lez p1, :cond_80

    if-nez p3, :cond_80

    .line 51
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 54
    :cond_80
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    if-eqz v0, :cond_c0

    .line 55
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    .line 57
    if-lez p1, :cond_c0

    if-nez p3, :cond_c0

    .line 58
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    .line 61
    :cond_c0
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    if-eqz v0, :cond_100

    .line 62
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    .line 64
    if-lez p1, :cond_100

    if-nez p3, :cond_100

    .line 65
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    .line 69
    :cond_100
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    if-eqz v0, :cond_140

    .line 70
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 72
    if-lez p1, :cond_140

    if-nez p3, :cond_140

    .line 73
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 77
    :cond_140
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    if-eqz v0, :cond_180

    .line 78
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    .line 80
    if-lez p1, :cond_180

    if-nez p3, :cond_180

    .line 81
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    .line 85
    :cond_180
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    if-eqz v0, :cond_1c0

    .line 86
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    .line 88
    if-lez p1, :cond_1c0

    if-nez p3, :cond_1c0

    .line 89
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    .line 93
    :cond_1c0
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    if-eqz v0, :cond_200

    .line 94
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    .line 96
    if-lez p1, :cond_200

    if-nez p3, :cond_200

    .line 97
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    .line 101
    :cond_200
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    if-eqz v0, :cond_240

    .line 102
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    .line 104
    if-lez p1, :cond_240

    if-nez p3, :cond_240

    .line 105
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    .line 109
    :cond_240
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    if-eqz v0, :cond_287

    .line 110
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    aget v2, v2, p1

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 112
    if-lez p1, :cond_282

    if-nez p3, :cond_282

    .line 113
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 116
    :cond_282
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 119
    :cond_287
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    if-eqz v0, :cond_2cc

    .line 120
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    .line 122
    if-lez p1, :cond_2c7

    if-nez p3, :cond_2c7

    .line 123
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    .line 126
    :cond_2c7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 129
    :cond_2cc
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    if-eqz v0, :cond_316

    .line 130
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    .line 132
    if-lez p1, :cond_30c

    if-nez p3, :cond_30c

    .line 133
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    .line 136
    :cond_30c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 137
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 140
    :cond_316
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    if-eqz v0, :cond_35b

    .line 141
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 143
    if-lez p1, :cond_356

    if-nez p3, :cond_356

    .line 144
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 147
    :cond_356
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 150
    :cond_35b
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    if-eqz v0, :cond_39b

    .line 151
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    .line 153
    if-lez p1, :cond_39b

    if-nez p3, :cond_39b

    .line 154
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    .line 158
    :cond_39b
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    if-eqz v0, :cond_3e2

    .line 159
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    .line 161
    if-lez p1, :cond_3db

    if-nez p3, :cond_3db

    .line 162
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    .line 165
    :cond_3db
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBuildingLimit()V

    .line 168
    :cond_3e2
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    if-eqz v0, :cond_429

    .line 169
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    .line 171
    if-lez p1, :cond_422

    if-nez p3, :cond_422

    .line 172
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    .line 175
    :cond_422
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateInfrastructureMax()V

    .line 179
    :cond_429
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    if-eqz v0, :cond_475

    .line 180
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    .line 182
    if-lez p1, :cond_469

    if-nez p3, :cond_469

    .line 183
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    .line 186
    :cond_469
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 187
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 190
    :cond_475
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    if-eqz v0, :cond_4b5

    .line 191
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 193
    if-lez p1, :cond_4b5

    if-nez p3, :cond_4b5

    .line 194
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 198
    :cond_4b5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    if-eqz v0, :cond_4f5

    .line 199
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 201
    if-lez p1, :cond_4f5

    if-nez p3, :cond_4f5

    .line 202
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 206
    :cond_4f5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    if-eqz v0, :cond_535

    .line 207
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    .line 209
    if-lez p1, :cond_535

    if-nez p3, :cond_535

    .line 210
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    .line 214
    :cond_535
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    if-eqz v0, :cond_575

    .line 215
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    .line 217
    if-lez p1, :cond_575

    if-nez p3, :cond_575

    .line 218
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    .line 222
    :cond_575
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    if-eqz v0, :cond_5b5

    .line 223
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    .line 225
    if-lez p1, :cond_5b5

    if-nez p3, :cond_5b5

    .line 226
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    .line 230
    :cond_5b5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    if-eqz v0, :cond_5f5

    .line 231
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    .line 233
    if-lez p1, :cond_5f5

    if-nez p3, :cond_5f5

    .line 234
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    .line 240
    :cond_5f5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    if-eqz v0, :cond_635

    .line 241
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 243
    if-lez p1, :cond_635

    if-nez p3, :cond_635

    .line 244
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 248
    :cond_635
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    if-eqz v0, :cond_675

    .line 249
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 251
    if-lez p1, :cond_675

    if-nez p3, :cond_675

    .line 252
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 257
    :cond_675
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    if-eqz v0, :cond_6b5

    .line 258
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 260
    if-lez p1, :cond_6b5

    if-nez p3, :cond_6b5

    .line 261
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 265
    :cond_6b5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    if-eqz v0, :cond_6f5

    .line 266
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 268
    if-lez p1, :cond_6f5

    if-nez p3, :cond_6f5

    .line 269
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 273
    :cond_6f5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    if-eqz v0, :cond_735

    .line 274
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    .line 276
    if-lez p1, :cond_735

    if-nez p3, :cond_735

    .line 277
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    .line 281
    :cond_735
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    if-eqz v0, :cond_775

    .line 282
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    .line 284
    if-lez p1, :cond_775

    if-nez p3, :cond_775

    .line 285
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    .line 290
    :cond_775
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    if-eqz v0, :cond_7b5

    .line 291
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    .line 293
    if-lez p1, :cond_7b5

    if-nez p3, :cond_7b5

    .line 294
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    .line 299
    :cond_7b5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    if-eqz v0, :cond_7f5

    .line 300
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    .line 302
    if-lez p1, :cond_7f5

    if-nez p3, :cond_7f5

    .line 303
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    .line 307
    :cond_7f5
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    if-eqz v0, :cond_83a

    .line 308
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    .line 310
    if-lez p1, :cond_835

    if-nez p3, :cond_835

    .line 311
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    .line 314
    :cond_835
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 317
    :cond_83a
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    if-eqz v0, :cond_881

    .line 318
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    .line 320
    if-lez p1, :cond_87a

    if-nez p3, :cond_87a

    .line 321
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    .line 324
    :cond_87a
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    .line 328
    :cond_881
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    if-eqz v0, :cond_8c1

    .line 329
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    .line 331
    if-lez p1, :cond_8c1

    if-nez p3, :cond_8c1

    .line 332
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    .line 336
    :cond_8c1
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    if-eqz v0, :cond_901

    .line 337
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    .line 339
    if-lez p1, :cond_901

    if-nez p3, :cond_901

    .line 340
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    .line 344
    :cond_901
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz v0, :cond_941

    .line 345
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    .line 347
    if-lez p1, :cond_941

    if-nez p3, :cond_941

    .line 348
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    .line 352
    :cond_941
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz v0, :cond_981

    .line 353
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    .line 355
    if-lez p1, :cond_981

    if-nez p3, :cond_981

    .line 356
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    .line 360
    :cond_981
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz v0, :cond_9c1

    .line 361
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    .line 363
    if-lez p1, :cond_9c1

    if-nez p3, :cond_9c1

    .line 364
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    .line 368
    :cond_9c1
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    if-eqz v0, :cond_a01

    .line 369
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    .line 371
    if-lez p1, :cond_a01

    if-nez p3, :cond_a01

    .line 372
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    .line 376
    :cond_a01
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    if-eqz v0, :cond_a41

    .line 377
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 379
    if-lez p1, :cond_a41

    if-nez p3, :cond_a41

    .line 380
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 384
    :cond_a41
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    if-eqz v0, :cond_a81

    .line 385
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    .line 387
    if-lez p1, :cond_a81

    if-nez p3, :cond_a81

    .line 388
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    .line 392
    :cond_a81
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    if-eqz v0, :cond_ac1

    .line 393
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    .line 395
    if-lez p1, :cond_ac1

    if-nez p3, :cond_ac1

    .line 396
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    .line 400
    :cond_ac1
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    if-eqz v0, :cond_b01

    .line 401
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    .line 403
    if-lez p1, :cond_b01

    if-nez p3, :cond_b01

    .line 404
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    .line 408
    :cond_b01
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    if-eqz v0, :cond_b41

    .line 409
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    .line 411
    if-lez p1, :cond_b41

    if-nez p3, :cond_b41

    .line 412
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    .line 417
    :cond_b41
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    if-eqz v0, :cond_b81

    .line 418
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    .line 420
    if-lez p1, :cond_b81

    if-nez p3, :cond_b81

    .line 421
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    .line 425
    :cond_b81
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    if-eqz v0, :cond_bc1

    .line 426
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    .line 428
    if-lez p1, :cond_bc1

    if-nez p3, :cond_bc1

    .line 429
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    .line 433
    :cond_bc1
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    if-eqz v0, :cond_c01

    .line 434
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    .line 436
    if-lez p1, :cond_c01

    if-nez p3, :cond_c01

    .line 437
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    .line 441
    :cond_c01
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    if-eqz v0, :cond_c41

    .line 442
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    .line 444
    if-lez p1, :cond_c41

    if-nez p3, :cond_c41

    .line 445
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    .line 449
    :cond_c41
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    if-eqz v0, :cond_c81

    .line 450
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    .line 452
    if-lez p1, :cond_c81

    if-nez p3, :cond_c81

    .line 453
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    .line 457
    :cond_c81
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    if-eqz v0, :cond_cc1

    .line 458
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    .line 460
    if-lez p1, :cond_cc1

    if-nez p3, :cond_cc1

    .line 461
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    .line 465
    :cond_cc1
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz v0, :cond_d01

    .line 466
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    .line 468
    if-lez p1, :cond_d01

    if-nez p3, :cond_d01

    .line 469
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    .line 473
    :cond_d01
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    if-eqz v0, :cond_d41

    .line 474
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    .line 476
    if-lez p1, :cond_d41

    if-nez p3, :cond_d41

    .line 477
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    .line 481
    :cond_d41
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    if-eqz v0, :cond_d81

    .line 482
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 484
    if-lez p1, :cond_d81

    if-nez p3, :cond_d81

    .line 485
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 489
    :cond_d81
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    if-eqz v0, :cond_dc1

    .line 490
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    .line 492
    if-lez p1, :cond_dc1

    if-nez p3, :cond_dc1

    .line 493
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    .line 497
    :cond_dc1
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    .line 498
    return-void
.end method
