.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;
.super Ljava/lang/Object;
.source "PieChart_Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME:I = 0x96

.field private static COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

.field public static pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static pieChart_BG2:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

.field public static progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private center:Lcom/badlogic/gdx/math/Vector2;

.field private centerTop:Lcom/badlogic/gdx/math/Vector2;

.field private fv:[F

.field private intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

.field private leftBottom:Lcom/badlogic/gdx/math/Vector2;

.field private leftTop:Lcom/badlogic/gdx/math/Vector2;

.field private oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

.field private rightBottom:Lcom/badlogic/gdx/math/Vector2;

.field private rightTop:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 23
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    .line 97
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v3, 0x3e20a0a1

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3efafafb

    const v3, 0x3f25a5a6

    const v4, 0x3e969697

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v1, "ui/piechart/bg.png"

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v1, "ui/piechart/bg2.png"

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG2:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 53
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    const-string v1, "ui/piechart/frame.png"

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    .line 64
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->setPercentage(F)V

    .line 65
    return-void
.end method

.method private final IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 7
    .param p1, "line"    # Lcom/badlogic/gdx/math/Vector2;

    .line 324
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 328
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 331
    .local v1, "isIntersect":Z
    if-eqz v1, :cond_16

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->TOP:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    .line 332
    :cond_16
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 335
    if-eqz v1, :cond_27

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->BOTTOM:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    .line 336
    :cond_27
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 339
    if-eqz v1, :cond_38

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->LEFT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    .line 340
    :cond_38
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 342
    if-eqz v1, :cond_49

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->RIGHT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    .line 344
    :cond_49
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->NONE:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    .line 345
    const/4 v2, 0x0

    return-object v2
.end method

.method private final convertToRadians(F)F
    .registers 3
    .param p1, "angleInDegrees"    # F

    .line 352
    const v0, 0x3c8efa35

    mul-float v0, v0, p1

    .line 353
    .local v0, "angleInRadians":F
    return v0
.end method

.method private final drawCircle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 14
    .param p1, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 189
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    if-nez v0, :cond_5

    .line 190
    return-void

    .line 193
    :cond_5
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    .line 194
    .local v0, "e":Lcom/badlogic/gdx/math/EarClippingTriangulator;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v1

    .line 196
    .local v1, "sv":Lcom/badlogic/gdx/utils/ShortArray;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V

    .line 198
    .local v2, "polyReg":Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 200
    .local v3, "poly":Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    .line 201
    int-to-float v5, p2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v6, p5

    sub-int/2addr v6, p3

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setPosition(FF)V

    .line 202
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRotation(F)V

    .line 203
    invoke-virtual {v3, p6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 204
    int-to-float v4, p4

    int-to-float v5, p5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    .line 206
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    .line 207
    return-void
.end method

.method private final drawCircle2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 16
    .param p1, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 211
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    if-nez v0, :cond_5

    .line 212
    return-void

    .line 215
    :cond_5
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    .line 216
    .local v0, "e":Lcom/badlogic/gdx/math/EarClippingTriangulator;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v1

    .line 218
    .local v1, "sv":Lcom/badlogic/gdx/utils/ShortArray;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V

    .line 220
    .local v2, "polyReg":Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 222
    .local v3, "poly":Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    .line 223
    int-to-float v5, p2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v6, p5

    sub-int/2addr v6, p3

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setPosition(FF)V

    .line 224
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRotation(F)V

    .line 225
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget v5, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v6, 0x3dcccccd    # 0.1f

    sub-float/2addr v5, v6

    iget v7, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v7, v6

    iget v8, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v8, v6

    iget v6, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v4, v5, v7, v8, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 226
    int-to-float v4, p4

    int-to-float v5, p5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    .line 228
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    .line 229
    return-void
.end method

.method private final drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 25
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v15, p1

    move/from16 v12, p6

    move-object/from16 v0, p1

    .line 159
    move-object/from16 v11, p7

    invoke-virtual {v15, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    move/from16 v10, p3

    int-to-float v2, v10

    move/from16 v9, p4

    neg-int v3, v9

    sub-int/2addr v3, v12

    int-to-float v3, v3

    move/from16 v8, p5

    int-to-float v6, v8

    int-to-float v7, v12

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v14

    .line 160
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v8, v16

    move/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v10, v16

    const/16 v16, 0x0

    move/from16 v11, v16

    move/from16 v12, v16

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 170
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 171
    return-void
.end method

.method private final drawCircle_100Percent2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 25
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v15, p1

    move/from16 v12, p6

    move-object/from16 v11, p7

    move-object/from16 v0, p1

    .line 174
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    iget v4, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v4, v3

    iget v5, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v5, v3

    iget v3, v11, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    move/from16 v10, p3

    int-to-float v2, v10

    move/from16 v9, p4

    neg-int v3, v9

    sub-int/2addr v3, v12

    int-to-float v3, v3

    move/from16 v8, p5

    int-to-float v6, v8

    int-to-float v7, v12

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v14

    .line 175
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v8, v16

    move/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v10, v16

    const/16 v16, 0x0

    move/from16 v11, v16

    move/from16 v12, v16

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 185
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 186
    return-void
.end method

.method private final drawPieChart_Data(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;F)V
    .registers 20
    .param p1, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "nData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p7, "fPerc"    # F

    .line 120
    move-object v8, p0

    move-object/from16 v9, p6

    :try_start_3
    iget-object v0, v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->begin()V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v0

    mul-float v0, v0, p7

    .line 124
    .local v0, "drawnPercentage":F
    const/4 v1, 0x1

    move v10, v0

    move v11, v1

    .end local v0    # "drawnPercentage":F
    .local v10, "drawnPercentage":F
    .local v11, "i":I
    :goto_16
    invoke-virtual/range {p6 .. p6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v0

    if-ge v11, v0, :cond_5a

    .line 125
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->setPercentage(F)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_60

    .line 128
    :try_start_1f
    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v0

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v1

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_60

    .line 131
    goto :goto_4c

    .line 129
    :catch_3e
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_3f
    sget-object v7, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 133
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_4c
    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v0

    mul-float v0, v0, p7

    add-float/2addr v10, v0

    .line 124
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 135
    .end local v11    # "i":I
    :cond_5a
    iget-object v0, v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->end()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5f} :catch_60

    .line 140
    .end local v10    # "drawnPercentage":F
    goto :goto_61

    .line 138
    :catch_60
    move-exception v0

    .line 141
    :goto_61
    return-void
.end method

.method private final drawPieChart_Data2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;FFLcom/badlogic/gdx/graphics/Color;)V
    .registers 20
    .param p1, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "nData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p7, "fPerc"    # F
    .param p8, "fPercValue"    # F
    .param p9, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 145
    move-object v8, p0

    :try_start_1
    iget-object v0, v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->begin()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1e

    .line 147
    move/from16 v9, p8

    :try_start_8
    invoke-virtual {p0, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->setPercentage(F)V

    .line 148
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 150
    iget-object v0, v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->end()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1c

    .line 153
    goto :goto_21

    .line 151
    :catch_1c
    move-exception v0

    goto :goto_21

    :catch_1e
    move-exception v0

    move/from16 v9, p8

    .line 154
    :goto_21
    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "nData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p8, "isActive"    # Z
    .param p9, "fPerc"    # F

    .line 72
    move-object/from16 v9, p7

    :try_start_2
    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v1

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v2

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v8, v1, v2, v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    .line 75
    goto :goto_30

    .line 73
    :catch_22
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_23
    sget-object v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 77
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_30
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 78
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawPieChart_Data(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;F)V

    .line 79
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_45

    .line 82
    goto :goto_49

    .line 80
    :catch_45
    move-exception v0

    .line 81
    .local v0, "exr":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "exr":Ljava/lang/Exception;
    :goto_49
    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZFFLcom/badlogic/gdx/graphics/Color;)V
    .registers 22
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPieChartBG"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "nData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p8, "isActive"    # Z
    .param p9, "fPerc"    # F
    .param p10, "fPercValue"    # F
    .param p11, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 103
    :try_start_0
    sget-object v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 106
    goto :goto_1e

    .line 111
    :catch_e
    move-exception v0

    goto :goto_37

    .line 104
    :catch_10
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_11
    sget-object v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 108
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_1e
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 109
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawPieChart_Data2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;FFLcom/badlogic/gdx/graphics/Color;)V

    .line 110
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_e

    .line 113
    goto :goto_3a

    .line 112
    .local v0, "exr":Ljava/lang/Exception;
    :goto_37
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "exr":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public final getHeight()I
    .registers 2

    .line 361
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 357
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method protected final setPercentage(F)V
    .registers 30
    .param p1, "percent"    # F

    .line 235
    move-object/from16 v0, p0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->convertToRadians(F)F

    move-result v1

    .line 236
    .local v1, "angle":F
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v2, v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->convertToRadians(F)F

    move-result v2

    sub-float/2addr v1, v2

    .line 238
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    if-le v2, v3, :cond_29

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    goto :goto_2f

    :cond_29
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    :goto_2f
    int-to-float v2, v2

    .line 239
    .local v2, "len":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 240
    .local v3, "dy":F
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    .line 241
    .local v4, "dx":F
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v4

    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v7, v3

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 243
    .local v5, "line":Lcom/badlogic/gdx/math/Vector2;
    invoke-direct {v0, v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 245
    .local v6, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->TOP:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x2

    if-ne v7, v8, :cond_125

    .line 246
    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_f0

    .line 247
    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v15, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v22, v1

    .end local v1    # "angle":F
    .local v22, "angle":F
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v23, v2

    .end local v2    # "len":F
    .local v23, "len":F
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v24, v3

    .end local v3    # "dy":F
    .local v24, "dy":F
    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v25, v4

    .end local v4    # "dx":F
    .local v25, "dx":F
    iget v4, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v26, v5

    .end local v5    # "line":Lcom/badlogic/gdx/math/Vector2;
    .local v26, "line":Lcom/badlogic/gdx/math/Vector2;
    iget v5, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v27, v6

    .end local v6    # "v":Lcom/badlogic/gdx/math/Vector2;
    .local v27, "v":Lcom/badlogic/gdx/math/Vector2;
    const/16 v6, 0xe

    new-array v6, v6, [F

    aput v7, v6, v20

    aput v8, v6, v19

    aput v9, v6, v21

    aput v10, v6, v18

    aput v12, v6, v17

    aput v11, v6, v16

    const/4 v7, 0x6

    aput v13, v6, v7

    const/4 v7, 0x7

    aput v14, v6, v7

    const/16 v7, 0x8

    aput v15, v6, v7

    const/16 v7, 0x9

    aput v1, v6, v7

    const/16 v1, 0xa

    aput v2, v6, v1

    const/16 v1, 0xb

    aput v3, v6, v1

    const/16 v1, 0xc

    aput v4, v6, v1

    const/16 v1, 0xd

    aput v5, v6, v1

    iput-object v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    move-object/from16 v5, v27

    goto/16 :goto_215

    .line 265
    .end local v22    # "angle":F
    .end local v23    # "len":F
    .end local v24    # "dy":F
    .end local v25    # "dx":F
    .end local v26    # "line":Lcom/badlogic/gdx/math/Vector2;
    .end local v27    # "v":Lcom/badlogic/gdx/math/Vector2;
    .restart local v1    # "angle":F
    .restart local v2    # "len":F
    .restart local v3    # "dy":F
    .restart local v4    # "dx":F
    .restart local v5    # "line":Lcom/badlogic/gdx/math/Vector2;
    .restart local v6    # "v":Lcom/badlogic/gdx/math/Vector2;
    :cond_f0
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .end local v1    # "angle":F
    .end local v2    # "len":F
    .end local v3    # "dy":F
    .end local v4    # "dx":F
    .end local v5    # "line":Lcom/badlogic/gdx/math/Vector2;
    .end local v6    # "v":Lcom/badlogic/gdx/math/Vector2;
    .restart local v22    # "angle":F
    .restart local v23    # "len":F
    .restart local v24    # "dy":F
    .restart local v25    # "dx":F
    .restart local v26    # "line":Lcom/badlogic/gdx/math/Vector2;
    .restart local v27    # "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v5, v27

    .end local v27    # "v":Lcom/badlogic/gdx/math/Vector2;
    .local v5, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v8, 0x6

    new-array v8, v8, [F

    aput v1, v8, v20

    aput v2, v8, v19

    aput v3, v8, v21

    aput v4, v8, v18

    aput v6, v8, v17

    aput v7, v8, v16

    iput-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto/16 :goto_215

    .line 276
    .end local v22    # "angle":F
    .end local v23    # "len":F
    .end local v24    # "dy":F
    .end local v25    # "dx":F
    .end local v26    # "line":Lcom/badlogic/gdx/math/Vector2;
    .restart local v1    # "angle":F
    .restart local v2    # "len":F
    .restart local v3    # "dy":F
    .restart local v4    # "dx":F
    .local v5, "line":Lcom/badlogic/gdx/math/Vector2;
    .restart local v6    # "v":Lcom/badlogic/gdx/math/Vector2;
    :cond_125
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object v5, v6

    .end local v1    # "angle":F
    .end local v2    # "len":F
    .end local v3    # "dy":F
    .end local v4    # "dx":F
    .end local v6    # "v":Lcom/badlogic/gdx/math/Vector2;
    .local v5, "v":Lcom/badlogic/gdx/math/Vector2;
    .restart local v22    # "angle":F
    .restart local v23    # "len":F
    .restart local v24    # "dy":F
    .restart local v25    # "dx":F
    .restart local v26    # "line":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->BOTTOM:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    if-ne v1, v2, :cond_17c

    .line 277
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v11, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/16 v12, 0xa

    new-array v12, v12, [F

    aput v1, v12, v20

    aput v2, v12, v19

    aput v3, v12, v21

    aput v4, v12, v18

    aput v6, v12, v17

    aput v7, v12, v16

    const/4 v1, 0x6

    aput v8, v12, v1

    const/4 v1, 0x7

    aput v9, v12, v1

    const/16 v1, 0x8

    aput v10, v12, v1

    const/16 v1, 0x9

    aput v11, v12, v1

    iput-object v12, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto/16 :goto_215

    .line 290
    :cond_17c
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->LEFT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    if-ne v1, v2, :cond_1b7

    .line 291
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/16 v10, 0x8

    new-array v10, v10, [F

    aput v1, v10, v20

    aput v2, v10, v19

    aput v3, v10, v21

    aput v4, v10, v18

    aput v6, v10, v17

    aput v7, v10, v16

    const/4 v1, 0x6

    aput v8, v10, v1

    const/4 v1, 0x7

    aput v9, v10, v1

    iput-object v10, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto :goto_215

    .line 302
    :cond_1b7
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->RIGHT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    if-ne v1, v2, :cond_212

    .line 303
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v13, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/16 v14, 0xc

    new-array v14, v14, [F

    aput v1, v14, v20

    aput v2, v14, v19

    aput v3, v14, v21

    aput v4, v14, v18

    aput v6, v14, v17

    aput v7, v14, v16

    const/4 v1, 0x6

    aput v8, v14, v1

    const/4 v1, 0x7

    aput v9, v14, v1

    const/16 v1, 0x8

    aput v10, v14, v1

    const/16 v1, 0x9

    aput v11, v14, v1

    const/16 v1, 0xa

    aput v12, v14, v1

    const/16 v1, 0xb

    aput v13, v14, v1

    iput-object v14, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto :goto_215

    .line 319
    :cond_212
    const/4 v1, 0x0

    iput-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    .line 321
    :goto_215
    return-void
.end method
