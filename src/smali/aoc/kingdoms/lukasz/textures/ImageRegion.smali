.class public Laoc/kingdoms/lukasz/textures/ImageRegion;
.super Ljava/lang/Object;
.source "ImageRegion.java"


# instance fields
.field private iHeight:I

.field private iRegionHeight:I

.field private iRegionWidth:I

.field private iWidth:I

.field private textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .registers 13
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "regionWidth"    # I
    .param p3, "regionHeight"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 20
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)V
    .registers 12
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "regionHeight"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 28
    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;I)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)V
    .registers 14
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "regionWidth"    # I
    .param p4, "regionHeight"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 24
    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)V
    .registers 15
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "regionWidth"    # I
    .param p5, "regionHeight"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 36
    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V
    .registers 9
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "wrapU"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "wrapV"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p6, "regionWidth"    # I
    .param p7, "regionHeight"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 40
    invoke-virtual/range {p0 .. p7}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V
    .registers 14
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "nTextureWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p4, "regionWidth"    # I
    .param p5, "regionHeight"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    .line 33
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 149
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 150
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 152
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 153
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 74
    iget v6, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    iget v13, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v14, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 75
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 22
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 78
    iget v6, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    iget v13, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v14, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 79
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .registers 35
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "originX"    # I
    .param p5, "originY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    .line 96
    iget-object v2, v0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    move/from16 v8, p2

    int-to-float v3, v8

    move/from16 v7, p3

    neg-int v4, v7

    iget v5, v0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move/from16 v6, p4

    int-to-float v5, v6

    move/from16 v0, p5

    int-to-float v6, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move/from16 v0, p7

    int-to-float v8, v0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 105
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "flipX"    # Z

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    .line 82
    iget v6, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    iget v13, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v14, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 83
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "flipX"    # Z
    .param p5, "flipY"    # Z

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    move/from16 v16, p5

    .line 86
    iget v6, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    iget v13, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    iget v14, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 87
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    .line 90
    move-object/from16 v12, p0

    iget v3, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    sub-int v3, p5, v3

    add-int v3, p3, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 91
    return-void
.end method

.method public final drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Laoc/kingdoms/lukasz/textures/ImageRegion;->drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 111
    return-void
.end method

.method public final drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 114
    iget v4, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/ImageRegion;->drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 115
    return-void
.end method

.method public final drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I

    .line 118
    iget-object v1, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, p2

    neg-int v0, p3

    sub-int/2addr v0, p5

    int-to-float v3, v0

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 119
    return-void
.end method

.method public final getHeight()I
    .registers 2

    .line 137
    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    return v0
.end method

.method public final getRegionHeight()I
    .registers 2

    .line 145
    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    return v0
.end method

.method public final getRegionWidth()I
    .registers 2

    .line 141
    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    return v0
.end method

.method public final getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .registers 2

    .line 129
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method

.method public final getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 2

    .line 125
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 133
    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    return v0
.end method

.method public final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;I)V
    .registers 8
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "wrapU"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "wrapV"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p6, "regionHeight"    # I

    .line 46
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 48
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 49
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 51
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 52
    iput p6, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 54
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    .line 55
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    .line 56
    return-void
.end method

.method public final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V
    .registers 9
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "wrapU"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "wrapV"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p6, "regionWidth"    # I
    .param p7, "regionHeight"    # I

    .line 59
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 61
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 62
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 64
    iput p6, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    .line 65
    iput p7, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    .line 67
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    .line 68
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    .line 69
    return-void
.end method
