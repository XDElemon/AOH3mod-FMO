.class public Laoc/kingdoms/lukasz/jakowski/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;
    }
.end annotation


# static fields
.field public static final IMAGE_REPLACE:Ljava/lang/String; = "%03u"


# instance fields
.field public animationMove:Laoc/kingdoms/lukasz/animation/AnimationData_Images;

.field private animationOnceImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;",
            ">;"
        }
    .end annotation
.end field

.field private animationOnceImagesSize:I

.field public clickAnimationDuration:I

.field public clickAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImagesSize:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    .line 80
    const/16 v0, 0x1a9

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimationDuration:I

    return-void
.end method


# virtual methods
.method public final addAnimationOnce(Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;)V
    .registers 3
    .param p1, "nAnimationOnceImages"    # Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;

    .line 34
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImagesSize:I

    .line 36
    return-void
.end method

.method public clickAnimation(II)V
    .registers 5
    .param p1, "nX"    # I
    .param p2, "nY"    # I

    .line 96
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;

    invoke-direct {v1, p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;-><init>(Laoc/kingdoms/lukasz/jakowski/AnimationManager;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImagesSize:I

    if-ge v0, v1, :cond_13

    .line 54
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method public final drawScaled(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 60
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_99

    .line 61
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;

    iget-wide v3, v3, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickTime:J

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimationDuration:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_90

    .line 62
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v7, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;

    iget-wide v7, v7, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimationDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 64
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->click:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 65
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 66
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 64
    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 68
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_95

    .line 71
    :cond_90
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    :goto_95
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 74
    .end local v0    # "i":I
    :cond_99
    return-void
.end method

.method protected final loadAnimations()V
    .registers 1

    .line 26
    return-void
.end method

.method public final update()V
    .registers 3

    .line 41
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 42
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->update()V

    .line 44
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationFinished()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 45
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 49
    .end local v0    # "i":I
    :cond_2b
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationOnceImagesSize:I

    .line 50
    return-void
.end method
