.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;
.super Ljava/lang/Object;
.source "Graph_Vertical_Data_Value.java"


# static fields
.field protected static final ALPHA:F = 0.35f

.field protected static final ALPHA_GRADIENT:F = 0.7f

.field protected static final ALPHA_GRADIENT2:F = 0.35f

.field protected static final COLOR_VALUE_BORDER:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field protected iColorDataID:I

.field protected iHeight:I

.field protected iValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->COLOR_VALUE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 4
    .param p1, "iValue"    # I
    .param p2, "iColorDataID"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iColorDataID:I

    .line 25
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iValue:I

    .line 26
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iColorDataID:I

    .line 27
    return-void
.end method

.method private drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "nHeight2"    # I
    .param p7, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 40
    move-object v8, p1

    move-object/from16 v9, p7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 41
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sub-int v1, p3, p5

    sub-int v3, v1, p6

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 44
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sub-int v1, p3, p5

    sub-int v3, v1, p6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 47
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sub-int v1, p3, p5

    sub-int v3, v1, p6

    div-int/lit8 v4, p4, 0x3

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 48
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, p2, p4

    div-int/lit8 v2, p4, 0x3

    sub-int v2, v1, v2

    sub-int v1, p3, p5

    sub-int v3, v1, p6

    div-int/lit8 v4, p4, 0x3

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 49
    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "nAnimationHeight"    # I
    .param p7, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 36
    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    .line 37
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 32
    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    .line 33
    return-void
.end method

.method protected final getDataTypeID()I
    .registers 2

    .line 70
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iColorDataID:I

    return v0
.end method

.method protected final getHeight()I
    .registers 2

    .line 58
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    return v0
.end method

.method protected final getValue()I
    .registers 2

    .line 54
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iValue:I

    return v0
.end method

.method protected final setHeight(I)V
    .registers 4
    .param p1, "iHeight"    # I

    .line 62
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    .line 64
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 65
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    .line 67
    :cond_9
    return-void
.end method
