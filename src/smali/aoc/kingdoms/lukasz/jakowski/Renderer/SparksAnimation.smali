.class public Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;
.super Ljava/lang/Object;
.source "SparksAnimation.java"


# instance fields
.field public ANIMATION_TIME:J

.field public currentIMG:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->ANIMATION_TIME:J

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 15
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->sparks:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 17
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->updateAnimation()V

    .line 18
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "flipX"    # Z
    .param p7, "flipY"    # Z

    .line 21
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->sparks:Ljava/util/List;

    move-object v1, p0

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 23
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->updateAnimation()V

    .line 24
    return-void
.end method

.method public draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 27
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->sparks:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 29
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->updateAnimation()V

    .line 30
    return-void
.end method

.method public draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "flipX"    # Z
    .param p7, "flipY"    # Z

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->sparks:Ljava/util/List;

    move-object v1, p0

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 35
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->updateAnimation()V

    .line 36
    return-void
.end method

.method public updateAnimation()V
    .registers 6

    .line 39
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->ANIMATION_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2d

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 40
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->ANIMATION_TIME:J

    .line 41
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    .line 43
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->SPARKS_SIZE:I

    if-lt v0, v1, :cond_1e

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->currentIMG:I

    .line 47
    :cond_1e
    return-void
.end method
