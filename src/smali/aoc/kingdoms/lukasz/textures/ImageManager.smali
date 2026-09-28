.class public Laoc/kingdoms/lukasz/textures/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field public static images:Ljava/util/List;
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

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addImage(Ljava/lang/String;)I
    .registers 2
    .param p0, "imageName"    # Ljava/lang/String;

    .line 23
    const-string v0, "PB39"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result v0

    return v0
.end method

.method public static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I
    .registers 6
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "nFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 31
    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I
    .registers 7
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "nFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "nTextureWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 37
    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I
    .registers 3
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 27
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result v0

    return v0
.end method

.method public static final buildPix()I
    .registers 5

    .line 144
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 145
    .local v0, "nPix":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    .line 147
    sget-object v1, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v1, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    return v1
.end method

.method public static final buildPix_IMG()Laoc/kingdoms/lukasz/textures/Image;
    .registers 3

    .line 153
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 154
    .local v0, "nPix":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    .line 156
    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    return-object v1
.end method

.method public static final getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    .registers 2
    .param p0, "ID"    # I

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method

.method public static final getImagesSize()I
    .registers 1

    .line 164
    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static final loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;
    .registers 3
    .param p0, "imageName"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Laoc/kingdoms/lukasz/textures/Image;
    .registers 3
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "pixmapFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 98
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;
    .registers 5
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "pixmapFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "textureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 106
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-object v0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Laoc/kingdoms/lukasz/textures/Image;
    .registers 6
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "nFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "nTextureWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 110
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-object v0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;
    .registers 3
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "textureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 102
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;I)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .registers 4
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "regionHeight"    # I

    .line 116
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0, v1, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .registers 5
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "regionWidth"    # I
    .param p2, "regionHeight"    # I

    .line 126
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0, v1, p1, p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .registers 5
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "pixmapFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "regionWidth"    # I
    .param p3, "regionHeight"    # I

    .line 130
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, p1, v0, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .registers 6
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "pixmapFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "textureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "regionHeight"    # I

    .line 120
    new-instance v0, Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)V

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .registers 7
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "pixmapFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "textureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "regionWidth"    # I
    .param p4, "regionHeight"    # I

    .line 138
    new-instance v0, Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Laoc/kingdoms/lukasz/textures/ImageRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)V

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .registers 5
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "textureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "regionWidth"    # I
    .param p3, "regionHeight"    # I

    .line 134
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0, p1, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object v0

    return-object v0
.end method

.method public static final loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;
    .registers 2
    .param p0, "sFile"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method

.method public static final loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;
    .registers 9
    .param p0, "sFile"    # Ljava/lang/String;
    .param p1, "nFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 54
    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_114

    .line 55
    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v2, :cond_60

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v2, v3, :cond_5f

    .line 57
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v0, v3, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    return-object v0

    .line 56
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .end local v2    # "i":I
    :cond_5f
    goto :goto_b2

    .line 63
    :cond_60
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_61
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v2, v3, :cond_b2

    .line 64
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 65
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v0, v3, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    return-object v0

    .line 63
    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 70
    .end local v2    # "i":I
    :cond_b2
    :goto_b2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b3
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v2, v3, :cond_114

    .line 71
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v5}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 72
    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v3, v0, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_110} :catch_117
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_110} :catch_115

    return-object v3

    .line 70
    :cond_111
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 78
    .end local v2    # "i":I
    :cond_114
    goto :goto_11b

    .line 85
    :catch_115
    move-exception v0

    goto :goto_143

    .line 76
    :catch_117
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_118
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11b
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_137

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 81
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    return-object v0

    .line 84
    :cond_137
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    :try_end_142
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_118 .. :try_end_142} :catch_115

    return-object v0

    .line 86
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_143
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 87
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    const-string v2, "gfx/imageNotFound.png"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;
    .registers 2
    .param p0, "sFile"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method
