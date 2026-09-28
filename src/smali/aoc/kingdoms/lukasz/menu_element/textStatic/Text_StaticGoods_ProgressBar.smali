.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;
.source "Text_StaticGoods_ProgressBar.java"


# static fields
.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public fPerc:F

.field public progressBar:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 15
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e20a0a1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dc8c8c9

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIFI)V
    .registers 21
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I
    .param p8, "fPerc"    # F
    .param p9, "iCurrent"    # I

    .line 19
    move-object v9, p0

    move/from16 v10, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;-><init>(Ljava/lang/String;IIIIIII)V

    .line 13
    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    .line 16
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const v2, 0x3efafafb

    const v3, 0x3f25a5a6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 21
    iput v10, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    .line 22
    move/from16 v0, p9

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iCurrent:I

    .line 24
    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3b808081

    cmpg-float v1, v10, v1

    if-gez v1, :cond_45

    .line 25
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f4dcdce

    const v5, 0x3e48c8c9

    invoke-direct {v1, v3, v5, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_90

    .line 27
    :cond_45
    const v1, 0x3f0ccccd    # 0.55f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_5a

    .line 28
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f058586

    const v3, 0x3e54d4d5

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_90

    .line 30
    :cond_5a
    const/high16 v1, 0x3f400000    # 0.75f

    const v3, 0x3f48c8c9

    cmpg-float v1, v10, v1

    if-gez v1, :cond_6b

    .line 31
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_90

    .line 33
    :cond_6b
    const v1, 0x3f7ae148    # 0.98f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_80

    .line 34
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3dc8c8c9

    const v5, 0x3d20a0a1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_90

    .line 37
    :cond_80
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f169697

    const v3, 0x3cc0c0c1

    const v5, 0x3db8b8b9

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    :goto_90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIFIZ)V
    .registers 22
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I
    .param p8, "fPerc"    # F
    .param p9, "iCurrent"    # I
    .param p10, "worldShare"    # Z

    .line 42
    move-object v9, p0

    move/from16 v10, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;-><init>(Ljava/lang/String;IIIIIII)V

    .line 13
    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    .line 16
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const v2, 0x3efafafb

    const v3, 0x3f25a5a6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 44
    iput v10, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    .line 45
    move/from16 v0, p9

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iCurrent:I

    .line 47
    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3b808081

    cmpg-float v1, v10, v1

    if-gez v1, :cond_46

    .line 48
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f4dcdce

    const v5, 0x3e48c8c9

    invoke-direct {v1, v3, v5, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_91

    .line 50
    :cond_46
    const/high16 v1, 0x3e000000    # 0.125f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_5a

    .line 51
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f058586

    const v3, 0x3e54d4d5

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_91

    .line 53
    :cond_5a
    const v1, 0x3e4ccccd    # 0.2f

    const v3, 0x3f48c8c9

    cmpg-float v1, v10, v1

    if-gez v1, :cond_6c

    .line 54
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_91

    .line 56
    :cond_6c
    const v1, 0x3e99999a    # 0.3f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_81

    .line 57
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3dc8c8c9

    const v5, 0x3d20a0a1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_91

    .line 60
    :cond_81
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f169697

    const v3, 0x3cc0c0c1

    const v5, 0x3db8b8b9

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 62
    :goto_91
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 75
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 73
    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 77
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    .line 80
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    .line 81
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    mul-float v0, v0, v2

    float-to-int v5, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    .line 82
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    .line 78
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 85
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 89
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 87
    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 91
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fontID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v1

    add-int/2addr v0, v1

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    goto :goto_16f

    :cond_16d
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    :goto_16f
    move-object v8, v0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 92
    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 68
    return-void
.end method
