.class public Laoc/kingdoms/lukasz/animation/AnimationData_Images;
.super Ljava/lang/Object;
.source "AnimationData_Images.java"


# instance fields
.field protected ANIMATION_DURATION:I

.field protected ANIMATION_FRAME_TIME:I

.field protected animationType:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

.field private iNumOfFrames:I

.field protected lAnimation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILaoc/kingdoms/lukasz/animation/AnimationData_Type;II)V
    .registers 10
    .param p1, "sImagesPath"    # Ljava/lang/String;
    .param p2, "numOfImages"    # I
    .param p3, "animationType"    # Laoc/kingdoms/lukasz/animation/AnimationData_Type;
    .param p4, "ANIMATION_DURATION"    # I
    .param p5, "ANIMATION_FRAME_TIME"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->iNumOfFrames:I

    .line 21
    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_DURATION:I

    .line 22
    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_FRAME_TIME:I

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, p2, :cond_3b

    .line 28
    iget-object v1, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%03u"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 31
    .end local v0    # "i":I
    :cond_3b
    iget-object v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->iNumOfFrames:I

    .line 33
    iput-object p3, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->animationType:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    .line 34
    iput p4, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_DURATION:I

    .line 35
    iput p5, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_FRAME_TIME:I

    .line 36
    return-void
.end method


# virtual methods
.method public final drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "currentFrameID"    # I

    .line 41
    iget-object v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 42
    return-void
.end method

.method public final getNumOfFrames()I
    .registers 2

    .line 47
    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->iNumOfFrames:I

    return v0
.end method
