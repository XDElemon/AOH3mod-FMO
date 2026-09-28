.class public Laoc/kingdoms/lukasz/textures/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private texture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 8
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .registers 9
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .registers 10
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "wrapU"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "wrapV"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 10
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "nTextureFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "nTextureWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 25
    return-void
.end method

.method private final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
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

    .line 164
    iget-object v2, v0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v8, p2

    int-to-float v3, v8

    iget v4, v0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    add-int v4, p3, v4

    neg-int v4, v4

    int-to-float v4, v4

    move/from16 v7, p4

    int-to-float v5, v7

    move/from16 v6, p5

    int-to-float v0, v6

    move v6, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move/from16 v0, p7

    int-to-float v8, v0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 173
    return-void
.end method

.method private final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .registers 36
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

    move/from16 v0, p7

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

    .line 185
    move-object/from16 v8, p0

    iget-object v2, v8, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v7, p2

    int-to-float v3, v7

    add-int v4, p3, v0

    neg-int v4, v4

    int-to-float v4, v4

    move/from16 v6, p4

    int-to-float v5, v6

    move-object/from16 v18, v1

    move/from16 v1, p5

    int-to-float v6, v1

    move/from16 v1, p6

    int-to-float v7, v1

    int-to-float v1, v0

    move v8, v1

    move-object/from16 v1, v18

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 194
    return-void
.end method

.method private final draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V
    .registers 28
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "flipX"    # Z
    .param p11, "flipY"    # Z

    .line 197
    move/from16 v0, p5

    move-object/from16 v1, p0

    iget-object v3, v1, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v14, p2

    int-to-float v4, v14

    add-int v2, p3, v0

    neg-int v2, v2

    int-to-float v5, v2

    move/from16 v15, p4

    int-to-float v6, v15

    int-to-float v7, v0

    move-object/from16 v2, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 203
    return-void
.end method

.method private final draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V
    .registers 28
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "flipX"    # Z
    .param p11, "flipY"    # Z

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v13, p2

    int-to-float v3, v13

    iget v1, v0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    add-int v1, p3, v1

    neg-int v1, v1

    int-to-float v4, v1

    move/from16 v14, p4

    int-to-float v5, v14

    move/from16 v15, p5

    int-to-float v6, v15

    move-object/from16 v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 182
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 221
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 224
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 225
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 50
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    add-int/2addr v2, p3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 53
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "scale"    # F

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p4

    move/from16 v9, p4

    .line 60
    iget v3, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    int-to-float v3, v3

    mul-float v3, v3, p4

    iget v4, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, p3, v3

    iget v6, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    iget v13, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v14, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 61
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "scale"    # F
    .param p5, "rotation"    # F

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p4

    move/from16 v9, p4

    move/from16 v10, p5

    .line 68
    iget v3, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    int-to-float v3, v3

    mul-float v3, v3, p4

    iget v4, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, p3, v3

    iget v6, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    iget v13, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v14, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 69
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I

    .line 72
    iget-object v1, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v2, p2

    neg-int v0, p3

    iget v3, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, p4

    iget v0, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 75
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I

    .line 78
    iget-object v1, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v2, p2

    add-int v0, p3, p5

    neg-int v0, v0

    int-to-float v3, v0

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 81
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "rotation"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    .line 88
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 89
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .registers 25
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "rotation"    # F
    .param p7, "srcX"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 96
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 97
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFIZ)V
    .registers 27
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "rotation"    # F
    .param p7, "srcX"    # I
    .param p8, "flipX"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v15, p8

    .line 100
    move/from16 v9, p5

    neg-int v7, v9

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v9, v17

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 101
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .registers 21
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I

    .line 84
    move-object v12, p0

    iget v8, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 85
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 21
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "flipX"    # Z
    .param p7, "flipY"    # Z

    .line 92
    move-object v12, p0

    iget v8, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 93
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "flipX"    # Z
    .param p5, "flipY"    # Z

    .line 56
    move-object v12, p0

    iget v4, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v5, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    iget v8, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 57
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I

    .line 106
    move-object v12, p0

    iget v5, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 107
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I

    .line 110
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 111
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fRotate"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    .line 122
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 123
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .registers 25
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fRotate"    # F
    .param p7, "srcX"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 126
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 127
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V
    .registers 26
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fRotate"    # F
    .param p7, "flipX"    # Z
    .param p8, "flipY"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v15, p7

    move/from16 v16, p8

    .line 130
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 131
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZI)V
    .registers 27
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fRotate"    # F
    .param p7, "flipX"    # Z
    .param p8, "flipY"    # Z
    .param p9, "srcX"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v11, p9

    .line 134
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 135
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I

    .line 138
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 139
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIF)V
    .registers 26
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "fRotate"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    .line 142
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 143
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V
    .registers 28
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "fRotate"    # F
    .param p9, "flipX"    # Z
    .param p10, "flipY"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    move/from16 v15, p9

    move/from16 v16, p10

    .line 146
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 147
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIZZ)V
    .registers 22
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "flipX"    # Z
    .param p9, "flipY"    # Z

    .line 158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 159
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "flipX"    # Z

    .line 150
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 151
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "flipX"    # Z
    .param p7, "flipY"    # Z

    .line 154
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 155
    return-void
.end method

.method public final draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fScale"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p6

    .line 114
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 115
    return-void
.end method

.method public final draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZF)V
    .registers 27
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "flipX"    # Z
    .param p7, "flipY"    # Z
    .param p8, "fScale"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v8, p8

    move/from16 v9, p8

    .line 118
    move/from16 v10, p5

    int-to-float v3, v10

    mul-float v3, v3, p8

    float-to-int v3, v3

    add-int v3, p3, v3

    move-object/from16 v5, p0

    iget v4, v5, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    sub-int/2addr v3, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    move/from16 v5, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 119
    return-void
.end method

.method public final drawFull(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fRotate"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v0, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v14, v0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fRotate"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p6

    const/4 v15, 0x0

    const/16 v16, 0x0

    div-int/lit8 v4, v6, 0x2

    div-int/lit8 v5, v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v0, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v14, v0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final drawLinePts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 25
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nX1"    # I
    .param p3, "nY1"    # I
    .param p4, "nX2"    # I
    .param p5, "nY2"    # I

    move-object/from16 v3, p1

    move/from16 v15, p2

    move/from16 v14, p3

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move v0, v4

    if-gez v0, :cond_e

    neg-int v0, v0

    :cond_e
    move v1, v5

    if-gez v1, :cond_12

    neg-int v1, v1

    :cond_12
    move v6, v0

    if-le v1, v6, :cond_16

    move v6, v1

    :cond_16
    if-lez v6, :cond_48

    int-to-double v0, v5

    int-to-double v10, v4

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v2, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airDot:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    const/4 v7, 0x0

    :goto_2f
    if-gt v7, v6, :cond_48

    mul-int v0, v4, v7

    div-int v0, v0, v6

    add-int/2addr v0, v15

    mul-int v1, v5, v7

    div-int v1, v1, v6

    add-int/2addr v1, v14

    move-object/from16 v10, v3

    add-int/lit8 v11, v0, -0x8

    add-int/lit8 v12, v1, -0x8

    move v13, v2

    invoke-virtual/range {v9 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->drawRot(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    add-int/lit8 v7, v7, 0x20

    goto :goto_2f

    :cond_48
    return-void
.end method

.method public final drawProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "scale"    # F

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p4

    .line 64
    iget v6, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    iget v13, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v14, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 65
    return-void
.end method

.method public final drawRot(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 26
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "fRotate"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p4

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v4, 0x8

    const/16 v5, 0x8

    iget v13, v0, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v14, v0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final getHeight()I
    .registers 2

    .line 217
    iget v0, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    return v0
.end method

.method public final getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .registers 2

    .line 209
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 213
    iget v0, p0, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    return v0
.end method

.method public final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 7
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "wrapU"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "wrapV"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 38
    iput-object p1, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 40
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 41
    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 43
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    .line 44
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    .line 45
    return-void
.end method
