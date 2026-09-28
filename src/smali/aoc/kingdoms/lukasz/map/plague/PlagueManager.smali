.class public Laoc/kingdoms/lukasz/map/plague/PlagueManager;
.super Ljava/lang/Object;
.source "PlagueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;,
        Laoc/kingdoms/lukasz/map/plague/PlagueManager$ConfigDiseaseData;
    }
.end annotation


# static fields
.field public static activePlagues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/plague/Plague;",
            ">;"
        }
    .end annotation
.end field

.field public static iPlaguesSize:I

.field public static lPlagues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;",
            ">;"
        }
    .end annotation
.end field

.field public static plagueImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static plagueImagesBig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->iPlaguesSize:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImages:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadDiseases()V
    .registers 8

    .line 264
    :try_start_0
    const-string v0, "game/diseases/Diseases.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 266
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 270
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager$ConfigDiseaseData;

    const-string v4, "Disease"

    const-class v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 271
    const-class v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager$ConfigDiseaseData;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager$ConfigDiseaseData;

    .line 273
    .local v3, "data":Laoc/kingdoms/lukasz/map/plague/PlagueManager$ConfigDiseaseData;
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager$ConfigDiseaseData;->Disease:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 274
    .local v5, "e":Ljava/lang/Object;
    sget-object v6, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_38} :catch_3b

    .line 275
    nop

    .end local v5    # "e":Ljava/lang/Object;
    goto :goto_26

    .line 278
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/map/plague/PlagueManager$ConfigDiseaseData;
    :cond_3a
    goto :goto_3f

    .line 276
    :catch_3b
    move-exception v0

    .line 277
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 280
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_3f
    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->iPlaguesSize:I

    .line 282
    invoke-static {}, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->loadPlagueImages()V

    .line 283
    return-void
.end method

.method public static final loadPlagueImages()V
    .registers 10

    .line 286
    const-string v0, "game/diseases/images/numOfImages.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 287
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, "numOfImages":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_ff

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/diseases/images/"

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

    const-string v6, "b.png"

    if-eqz v3, :cond_9d

    .line 291
    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImages:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v7, v5, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

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

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v4, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 295
    :cond_9d
    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImages:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v7, v5, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

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

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v4, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_fb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 299
    .end local v2    # "i":I
    :cond_ff
    return-void
.end method

.method public static final runPlagues()V
    .registers 6

    .line 34
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_10a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 36
    :try_start_a
    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/Plague;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/plague/Plague;->runDisease()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    .line 39
    goto :goto_1a

    .line 37
    :catch_16
    move-exception v2

    .line 38
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_17
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 34
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 43
    .end local v0    # "i":I
    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_10a

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_24
    if-ltz v0, :cond_f2

    .line 45
    :try_start_26
    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v3, v2, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    sub-int/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    if-ge v3, v1, :cond_e9

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e9

    .line 48
    add-int/lit8 v2, v0, 0x1

    .local v2, "k":I
    :goto_47
    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e4

    .line 49
    const/4 v3, 0x0

    .local v3, "o":I
    :goto_50
    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c8

    .line 50
    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-eqz v4, :cond_c5

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    .line 51
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/Plague;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/plague/Plague;->getPlagueID_InGame()I

    move-result v5

    if-ne v4, v5, :cond_c5

    .line 53
    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v5, v4, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    sub-int/2addr v5, v1

    iput v5, v4, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    .line 49
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 57
    .end local v3    # "o":I
    :cond_c8
    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/plague/Plague;

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/Plague;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/plague/Plague;->getPlagueID_InGame()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/plague/Plague;->setPlagueID_InGame(I)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_47

    .line 60
    .end local v2    # "k":I
    :cond_e4
    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_e9} :catch_ea

    .line 64
    :cond_e9
    goto :goto_ee

    .line 62
    :catch_ea
    move-exception v2

    .line 63
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_eb
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 43
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_ee
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_24

    .line 67
    .end local v0    # "i":I
    :cond_f2
    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_f9
    if-ltz v0, :cond_109

    .line 68
    sget-object v1, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/plague/Plague;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/plague/Plague;->spreadDisease()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_106} :catch_10a

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_f9

    .line 72
    .end local v0    # "i":I
    :cond_109
    goto :goto_10e

    .line 70
    :catch_10a
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_10e
    return-void
.end method

.method public static final startDisease()V
    .registers 8

    .line 78
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_OUTBREAK_RANDOM:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 80
    .local v0, "tRandScore":I
    int-to-float v1, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_OUTBREAK_RANDOM:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAge_DiseaseChance(I)F

    move-result v3

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b7

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "tempIDsToSpawn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 85
    .local v2, "tScoreTotal":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    sget v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->iPlaguesSize:I

    if-ge v3, v4, :cond_63

    .line 86
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v5, v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->BeginningYear:I

    if-lt v4, v5, :cond_60

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v5, v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->EndYear:I

    if-gt v4, v5, :cond_60

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    int-to-float v4, v2

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v5, v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_CHANCE:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_OUTBREAK_MODIFY:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 85
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 93
    .end local v3    # "i":I
    :cond_63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b7

    .line 94
    const/4 v3, 0x0

    .line 96
    .local v3, "spawnID":I
    if-lez v2, :cond_a0

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "tCurrentScore":I
    :goto_73
    if-ltz v4, :cond_9f

    .line 98
    sget-object v6, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v6, v6, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_CHANCE:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_OUTBREAK_MODIFY:I

    int-to-float v7, v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    .line 100
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 102
    if-le v5, v0, :cond_9c

    .line 103
    move v3, v4

    .line 104
    goto :goto_9f

    .line 97
    :cond_9c
    add-int/lit8 v4, v4, -0x1

    goto :goto_73

    .end local v4    # "i":I
    .end local v5    # "tCurrentScore":I
    :cond_9f
    :goto_9f
    goto :goto_aa

    .line 109
    :cond_a0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 112
    :goto_aa
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->startDisease(I)V

    .line 115
    .end local v1    # "tempIDsToSpawn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "tScoreTotal":I
    .end local v3    # "spawnID":I
    :cond_b7
    return-void
.end method

.method private static final startDisease(I)V
    .registers 31
    .param p0, "nID"    # I

    .line 121
    move/from16 v1, p0

    :try_start_2
    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v0, v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_PROVINCES:I

    .line 122
    .local v0, "nOutbreakProvinces":I
    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v2, v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_PROVINCES_EXTRA:I

    if-lez v2, :cond_29

    .line 123
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_PROVINCES_EXTRA:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    :cond_29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_74

    .line 130
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_71

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-nez v4, :cond_71

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_71

    .line 131
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v4, :cond_71

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 132
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    sub-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->PLAGUE_PAUSE_FOR_X_DAYS:I

    if-le v4, v5, :cond_71

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 138
    .end local v3    # "i":I
    :cond_74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_34c

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "lSpreadPropositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->DEATH_RATE_MIN:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x8

    .line 143
    .local v4, "nToCheck":I
    :goto_96
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b9

    add-int/lit8 v6, v4, -0x1

    .end local v4    # "nToCheck":I
    .local v6, "nToCheck":I
    if-lez v4, :cond_b8

    .line 144
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 146
    .local v4, "tRandID":I
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    move v4, v6

    .end local v4    # "tRandID":I
    goto :goto_96

    .line 143
    :cond_b8
    move v4, v6

    .line 150
    .end local v6    # "nToCheck":I
    .local v4, "nToCheck":I
    :cond_b9
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_347

    .line 153
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v6, "lSpreadPropositions_Score":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v7, 0x0

    .line 156
    .local v7, "tMaxPopulation":I
    const/4 v8, 0x0

    .line 157
    .local v8, "tMaxEconomy":F
    const/4 v9, 0x0

    .line 158
    .local v9, "tMaxInfrastructure":F
    const/4 v10, 0x0

    .line 160
    .local v10, "tMaxDevastation":F
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_d1
    if-ltz v11, :cond_17a

    .line 161
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v12

    if-le v12, v7, :cond_fa

    .line 162
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v12

    move v7, v12

    .line 165
    :cond_fa
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    cmpl-float v12, v12, v8

    if-lez v12, :cond_123

    .line 166
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    move v8, v12

    .line 169
    :cond_123
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v12, v12, v9

    if-lez v12, :cond_14d

    .line 170
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v12

    int-to-float v9, v12

    .line 173
    :cond_14d
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_176

    .line 174
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v12

    move v10, v12

    .line 160
    :cond_176
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_d1

    .line 178
    .end local v11    # "i":I
    :cond_17a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .restart local v11    # "i":I
    :goto_180
    if-ltz v11, :cond_21a

    .line 179
    sget-object v12, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 180
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v12, v12, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_SCORE_POPULATION:F

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v13

    int-to-float v13, v13

    mul-float v12, v12, v13

    int-to-float v13, v7

    div-float/2addr v12, v13

    sget-object v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 181
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v13, v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_SCORE_ECONOMY:F

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v14

    mul-float v13, v13, v14

    div-float/2addr v13, v8

    add-float/2addr v12, v13

    sget-object v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 183
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v13, v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_SCORE_INFRASTRUCTURE:F

    sget-object v14, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v14, v14, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_SCORE_INFRASTRUCTURE:F

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v15

    int-to-float v15, v15

    mul-float v14, v14, v15

    div-float/2addr v14, v9

    sub-float/2addr v13, v14

    add-float/2addr v12, v13

    sget-object v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 184
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v13, v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->OUTBREAK_SCORE_DEVASTATION:F

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v14

    mul-float v13, v13, v14

    div-float/2addr v13, v10

    add-float/2addr v12, v13

    .line 180
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 179
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_180

    .line 187
    .end local v11    # "i":I
    :cond_21a
    const/4 v11, 0x0

    .line 189
    .local v11, "tBestID":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "i":I
    :goto_221
    if-lez v12, :cond_23f

    .line 190
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_23c

    .line 191
    move v11, v12

    .line 189
    :cond_23c
    add-int/lit8 v12, v12, -0x1

    goto :goto_221

    .line 195
    .end local v12    # "i":I
    :cond_23f
    sget-object v12, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 197
    .local v12, "nPlagueID_InGame":I
    sget-object v15, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    new-instance v14, Laoc/kingdoms/lukasz/map/plague/Plague;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sget-object v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->Name:Ljava/lang/String;

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v5, v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->R:F

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v5, v5, v18

    move-object/from16 v25, v2

    .end local v2    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v25, "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v2, v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->G:F

    div-float v2, v2, v18

    move/from16 v26, v4

    .end local v4    # "nToCheck":I
    .local v26, "nToCheck":I
    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->B:F

    div-float v18, v4, v18

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 199
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->DEATH_RATE_MIN:F

    move/from16 v27, v7

    .end local v7    # "tMaxPopulation":I
    .local v27, "tMaxPopulation":I
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    move/from16 v28, v8

    .end local v8    # "tMaxEconomy":F
    .local v28, "tMaxEconomy":F
    sget-object v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v8, v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->DEATH_RATE_EXTRA:F

    const v19, 0x47c35000    # 100000.0f

    mul-float v8, v8, v19

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v8, v8, v17

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v19

    add-float v20, v4, v7

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 200
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->DURATION_TURNS_MIN:I

    sget-object v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v7, v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->DURATION_TURNS_EXTRA:I

    if-lez v7, :cond_2db

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v8, v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->DURATION_TURNS_EXTRA:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    goto :goto_2dc

    :cond_2db
    const/4 v7, 0x0

    :goto_2dc
    add-int v21, v4, v7

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 201
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->EXPANSION_MODIFIER:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v8, v8, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->EXPANSION_MODIFIER_EXTRA:F

    mul-float v8, v8, v19

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v8, v8, v17

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v19

    add-float v22, v4, v7

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->ImageID:I

    sget-object v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->lPlagues:Ljava/util/List;

    .line 202
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;

    iget v7, v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager$Data_Disease;->DEVASTATION:F

    move-object v8, v13

    move-object v13, v14

    move-object v1, v14

    move/from16 v14, v16

    move/from16 v29, v9

    move-object v9, v15

    .end local v9    # "tMaxInfrastructure":F
    .local v29, "tMaxInfrastructure":F
    move-object v15, v8

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v19, v12

    move/from16 v23, v4

    move/from16 v24, v7

    invoke-direct/range {v13 .. v24}, Laoc/kingdoms/lukasz/map/plague/Plague;-><init>(ILjava/lang/String;FFFIFIFIF)V

    .line 197
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 206
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 208
    add-int/lit8 v0, v0, -0x1

    .line 210
    if-lez v0, :cond_34e

    .line 211
    sget-object v1, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/plague/Plague;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/plague/Plague;->spreadDisease(I)V
    :try_end_346
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_346} :catch_34f

    goto :goto_34e

    .line 152
    .end local v6    # "lSpreadPropositions_Score":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tMaxDevastation":F
    .end local v11    # "tBestID":I
    .end local v12    # "nPlagueID_InGame":I
    .end local v25    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v26    # "nToCheck":I
    .end local v27    # "tMaxPopulation":I
    .end local v28    # "tMaxEconomy":F
    .end local v29    # "tMaxInfrastructure":F
    .restart local v2    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "nToCheck":I
    :cond_347
    move-object/from16 v25, v2

    move/from16 v26, v4

    .end local v2    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "nToCheck":I
    .restart local v25    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v26    # "nToCheck":I
    goto :goto_34e

    .line 138
    .end local v3    # "lSpreadPropositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v26    # "nToCheck":I
    .restart local v2    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_34c
    move-object/from16 v25, v2

    .line 217
    .end local v0    # "nOutbreakProvinces":I
    .end local v2    # "lPossibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_34e
    :goto_34e
    goto :goto_353

    .line 215
    :catch_34f
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 218
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_353
    return-void
.end method
