.class public Laoc/kingdoms/lukasz/map/map/MapBG;
.super Ljava/lang/Object;
.source "MapBG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;,
        Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;,
        Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;,
        Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;,
        Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;,
        Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;
    }
.end annotation


# static fields
.field public static iHeightOfMap:I

.field public static iWidthOfMap:I

.field public static loadMapBG_FileID:I

.field public static mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;


# instance fields
.field public final ALPHA_MINIMAPS:I

.field public final EXTRA_XY:F

.field public PreviewBelowZero:Z

.field private animationTime:J

.field public drawMapAnimation:Z

.field public fMinimapScaleX:F

.field public fMinimapScaleY:F

.field public fMinimapScaled_Scale:F

.field public fPreviewScaleX:F

.field public fPreviewScaleY:F

.field public fPreviewScaled_Scale:F

.field public gameMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public gameMap2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public gameMap2Size:I

.field public gameMapSize:I

.field private iBGID:I

.field private iBackground2Size_X:I

.field private iBackground2Size_Y:I

.field private iBackgroundSize_X:I

.field private iBackgroundSize_Y:I

.field public iHeightOfMapTech:I

.field private iHeightOfMap_Real:I

.field private iHeightOfSingleBG:I

.field private iHeightOfSingleBG2:I

.field private iHeightOfSingleBGTech:I

.field private iHeightOfSingleBG_xMapScale:I

.field public iMapExtraScale:F

.field public iMapScale:I

.field public iMapScaleBG:F

.field public iMinimapHeight:I

.field public iMinimapScaled_Height:I

.field public iMinimapScaled_PosX:I

.field public iMinimapScaled_PosY:I

.field public iMinimapScaled_Width:I

.field public iMinimapWidth:I

.field public iPreviewHeight:I

.field public iPreviewScaled_Height:I

.field public iPreviewScaled_PosX:I

.field public iPreviewScaled_PosY:I

.field public iPreviewScaled_Width:I

.field public iPreviewWidth:I

.field private iWidthOfMapTech:I

.field private iWidthOfMap_Real:I

.field private iWidthOfSingleBG:I

.field private iWidthOfSingleBG2:I

.field private iWidthOfSingleBGTech:I

.field private iWidthOfSingleBG_xMapScale:I

.field private inAnimation:Z

.field public isOutsideInView:Z

.field public isOutsideInView_Bot:Z

.field public mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

.field private mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

.field public minimapBG:Laoc/kingdoms/lukasz/textures/Image;

.field public minimapBelowZero:Z

.field public minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

.field public minimapOver:Laoc/kingdoms/lukasz/textures/Image;

.field private outsideMapImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field private outsideMapImagesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;",
            ">;"
        }
    .end annotation
.end field

.field private outsideMapImagesData_Below:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;",
            ">;"
        }
    .end annotation
.end field

.field private outsideMapImagesSize:I

.field private outsideMapImagesSize_Below:I

.field private outsideMapImages_Below:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public outsideScale:F

.field public outsideScale2:F

.field public previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

.field public requestToDisposeMinimap:Z

.field public scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

.field public scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

.field public scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

.field public secondSideOfMap:Z

.field private worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 40
    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    .line 122
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    .line 593
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapBG$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    .line 32
    const/4 v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    .line 34
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 36
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    .line 37
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    .line 42
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap_Real:I

    .line 43
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap_Real:I

    .line 45
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG:I

    .line 46
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    .line 48
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    .line 49
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    .line 56
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    .line 57
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    .line 59
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    .line 60
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    .line 62
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    .line 63
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    .line 65
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    .line 66
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    .line 74
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    .line 79
    const/4 v3, 0x0

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    .line 81
    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 82
    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    .line 84
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    .line 94
    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 95
    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    .line 96
    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    .line 98
    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    .line 311
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    .line 312
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    .line 313
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize:I

    .line 315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    .line 317
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize_Below:I

    .line 325
    new-instance v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    .line 421
    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    .line 428
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    .line 430
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I

    .line 431
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    .line 432
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    .line 740
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    .line 741
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    .line 743
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    .line 744
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale2:F

    .line 985
    const/16 v3, 0xdc

    iput v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->ALPHA_MINIMAPS:I

    .line 986
    const/high16 v3, 0x3e000000    # 0.125f

    iput v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->EXTRA_XY:F

    .line 989
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    .line 990
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    .line 991
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    .line 992
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    .line 994
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    .line 996
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    .line 1000
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosX:I

    .line 1001
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosY:I

    .line 1002
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Width:I

    .line 1003
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Height:I

    .line 1005
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaled_Scale:F

    .line 1007
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->PreviewBelowZero:Z

    .line 109
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateActiveMapBGShader()V

    .line 110
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateWorldMap()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 27
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I

    return v0
.end method

.method static synthetic access$002(Laoc/kingdoms/lukasz/map/map/MapBG;I)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;
    .param p1, "x1"    # I

    .line 27
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I

    return p1
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/map/map/MapBG;)V
    .registers 1
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 27
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateBGAnimationTime()V

    return-void
.end method

.method static synthetic access$1000(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 27
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    return v0
.end method

.method static synthetic access$1100(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 27
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    return v0
.end method

.method static synthetic access$200(Laoc/kingdoms/lukasz/map/map/MapBG;)Z
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 27
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    return v0
.end method

.method static synthetic access$202(Laoc/kingdoms/lukasz/map/map/MapBG;Z)Z
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    return p1
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J
    .registers 3
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 27
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    return-wide v0
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 5
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;
    .param p1, "x1"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # F

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method static synthetic access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 5
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;
    .param p1, "x1"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # F

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method static synthetic access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;
    .param p1, "x1"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method static synthetic access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;
    .param p1, "x1"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Over(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method static synthetic access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;
    .param p1, "x1"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Below(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method static synthetic access$900(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 27
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    return v0
.end method

.method private final drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "fAlpha"    # F

    .line 634
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 635
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 639
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v0, :cond_6f

    .line 640
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "currID":I
    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    .local v2, "tempHeight":I
    :goto_20
    if-ltz v0, :cond_6f

    .line 641
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    add-int/2addr v3, v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(II)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 642
    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    mul-int/lit8 v3, v3, 0x2

    .line 644
    .local v3, "tempWidth":I
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_33
    if-ltz v4, :cond_65

    .line 645
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(II)Z

    move-result v5

    if-nez v5, :cond_49

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(II)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 646
    :cond_49
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    invoke-virtual {v5, p1, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 649
    :cond_5d
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v3, v5

    .line 650
    add-int/lit8 v1, v1, -0x1

    .line 644
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    .end local v4    # "i":I
    :cond_65
    goto :goto_69

    .line 654
    .end local v3    # "tempWidth":I
    :cond_66
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    sub-int/2addr v1, v3

    .line 657
    :goto_69
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    .line 640
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 661
    .end local v0    # "j":I
    .end local v1    # "currID":I
    .end local v2    # "tempHeight":I
    :cond_6f
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "currID":I
    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    .restart local v2    # "tempHeight":I
    :goto_7c
    if-ltz v0, :cond_c9

    .line 662
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    add-int/2addr v3, v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(II)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 663
    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 665
    .restart local v3    # "tempWidth":I
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_8d
    if-ltz v4, :cond_bf

    .line 666
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(II)Z

    move-result v5

    if-nez v5, :cond_a3

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(II)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 667
    :cond_a3
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    invoke-virtual {v5, p1, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 670
    :cond_b7
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v3, v5

    .line 671
    add-int/lit8 v1, v1, -0x1

    .line 665
    add-int/lit8 v4, v4, -0x1

    goto :goto_8d

    .end local v4    # "i":I
    :cond_bf
    goto :goto_c3

    .line 675
    .end local v3    # "tempWidth":I
    :cond_c0
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    sub-int/2addr v1, v3

    .line 678
    :goto_c3
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    .line 661
    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    .line 681
    .end local v0    # "j":I
    .end local v1    # "currID":I
    .end local v2    # "tempHeight":I
    :cond_c9
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMapEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 683
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapOver;->drawMapOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 684
    return-void
.end method

.method private final drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 687
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 691
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v0, :cond_49

    .line 692
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "currID":I
    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v3

    .local v2, "tempHeight":I
    :goto_16
    if-ltz v0, :cond_49

    .line 693
    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    mul-int/lit8 v3, v3, 0x2

    .line 695
    .local v3, "tempWidth":I
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_20
    if-ltz v4, :cond_43

    .line 696
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    add-int v5, p2, v3

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int v8, v5, v7

    add-int v9, p3, v2

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 697
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int/2addr v3, v5

    .line 698
    add-int/lit8 v1, v1, -0x1

    .line 695
    add-int/lit8 v4, v4, -0x1

    goto :goto_20

    .line 701
    .end local v4    # "i":I
    :cond_43
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v4

    .line 692
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 705
    .end local v0    # "j":I
    .end local v1    # "currID":I
    .end local v2    # "tempHeight":I
    .end local v3    # "tempWidth":I
    :cond_49
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "currID":I
    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v3

    .restart local v2    # "tempHeight":I
    :goto_56
    if-ltz v0, :cond_87

    .line 706
    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 708
    .restart local v3    # "tempWidth":I
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_5e
    if-ltz v4, :cond_81

    .line 709
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    add-int v5, p2, v3

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int v8, v5, v7

    add-int v9, p3, v2

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 710
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int/2addr v3, v5

    .line 711
    add-int/lit8 v1, v1, -0x1

    .line 708
    add-int/lit8 v4, v4, -0x1

    goto :goto_5e

    .line 714
    .end local v4    # "i":I
    :cond_81
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v4

    .line 705
    add-int/lit8 v0, v0, -0x1

    goto :goto_56

    .line 717
    .end local v0    # "j":I
    .end local v1    # "currID":I
    .end local v2    # "tempHeight":I
    .end local v3    # "tempWidth":I
    :cond_87
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMapEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 718
    return-void
.end method

.method private final drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "fAlpha"    # F

    .line 630
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    invoke-interface {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;->drawMapSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 631
    return-void
.end method

.method private final drawOutsideTheMap_Below(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 814
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    .line 816
    return-void

    .line 819
    :cond_25
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateOutsideTheMap_Scale()V

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    .line 822
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->outsideMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 824
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v4, v0, v2

    .line 825
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v6, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    .line 822
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZF)V

    .line 828
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 830
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    .line 832
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v6, v0, v4

    .line 833
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    div-int/lit8 v8, v0, 0x2

    .line 830
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 836
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 837
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 839
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    div-int/lit8 v2, v2, 0x8

    sub-int v4, v0, v2

    .line 840
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    div-int/lit8 v6, v0, 0x8

    .line 837
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 843
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 845
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_BelowImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 846
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 847
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_BelowImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 850
    :cond_ee
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v0, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v2

    add-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 851
    return-void
.end method

.method private final drawOutsideTheMap_BelowImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize_Below:I

    if-ge v0, v1, :cond_4a

    .line 855
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    .line 856
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    float-to-int v2, v2

    add-int/2addr v2, p2

    .line 857
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    .line 858
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    .line 859
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    .line 855
    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 861
    .end local v0    # "i":I
    :cond_4a
    return-void
.end method

.method private final drawOutsideTheMap_Over(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 763
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    neg-int v1, v1

    if-ge v0, v1, :cond_11

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    .line 765
    return-void

    .line 768
    :cond_11
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateOutsideTheMap_Scale()V

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    .line 771
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->outsideMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    sub-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    .line 773
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int v4, v0, v2

    .line 774
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v6, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    .line 771
    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 777
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 779
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    div-int/lit8 v0, v0, 0x2

    sub-int v6, p3, v0

    .line 782
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    div-int/lit8 v8, v0, 0x2

    .line 779
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 785
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 786
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    sub-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    .line 788
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    .line 789
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    div-int/lit8 v6, v0, 0x8

    .line 786
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 792
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 794
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_OverImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 795
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 796
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_OverImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 799
    :cond_bd
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p2

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 800
    return-void
.end method

.method private final drawOutsideTheMap_OverImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize:I

    if-ge v0, v1, :cond_4b

    .line 804
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    .line 805
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    sub-int v3, p3, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    .line 806
    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    .line 807
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    .line 808
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    .line 804
    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 810
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method private final drawOutsideTheMap_Shadow()I
    .registers 2

    .line 737
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private final loadOutsideMapImages()V
    .registers 13

    .line 338
    :try_start_0
    const-string v0, "gfx/map/OutsideMapImages_Over.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 339
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 342
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    const-string v4, "Data"

    const-class v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 343
    const-class v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    .line 345
    .local v3, "data":Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;->Data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 346
    .local v5, "e":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    .line 348
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gfx/map/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->imageFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v9

    invoke-direct {v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 353
    .local v7, "tID":I
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    mul-float v9, v9, v10

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    .line 355
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d0

    .line 356
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    .line 359
    :cond_d0
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_10b

    .line 360
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    goto :goto_144

    .line 363
    :cond_10b
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    int-to-float v9, v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    mul-float v9, v9, v10

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    .line 365
    .end local v5    # "e":Ljava/lang/Object;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;
    .end local v7    # "tID":I
    :goto_144
    goto/16 :goto_26

    .line 367
    :cond_146
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize:I
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14e} :catch_14f

    .line 370
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;
    goto :goto_153

    .line 368
    :catch_14f
    move-exception v0

    .line 369
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 371
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_153
    return-void
.end method

.method private final loadOutsideMapImages_Below()V
    .registers 14

    .line 375
    :try_start_0
    const-string v0, "gfx/map/OutsideMapImages_Below.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 376
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 379
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    const-string v4, "Data"

    const-class v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 380
    const-class v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    .line 382
    .local v3, "data":Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;->Data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 383
    .local v5, "e":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    .line 385
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gfx/map/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->imageFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v9

    invoke-direct {v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 390
    .local v7, "tID":I
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    mul-float v9, v9, v10

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    .line 392
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d0

    .line 393
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    .line 396
    :cond_d0
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    const v9, 0x3c23d70a    # 0.01f

    const/4 v10, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_ec

    .line 397
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iput v10, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    .line 399
    :cond_ec
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_127

    .line 400
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    goto :goto_160

    .line 403
    :cond_127
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    int-to-float v9, v9

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    mul-float v9, v9, v11

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v9, v11

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    .line 406
    :goto_160
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float v9, v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1a1

    .line 407
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iput v9, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    .line 410
    :cond_1a1
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1b9

    .line 411
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iput v10, v8, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    .line 413
    .end local v5    # "e":Ljava/lang/Object;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;
    .end local v7    # "tID":I
    :cond_1b9
    goto/16 :goto_26

    .line 415
    :cond_1bb
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize_Below:I
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c3} :catch_1c4

    .line 418
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;
    goto :goto_1c8

    .line 416
    :catch_1c4
    move-exception v0

    .line 417
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 419
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1c8
    return-void
.end method

.method private final updateBGAnimationTime()V
    .registers 9

    .line 584
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    if-eqz v0, :cond_1b

    .line 585
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-long v2, v2

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    goto :goto_1f

    .line 587
    :cond_1b
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    .line 590
    :goto_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    .line 591
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 4

    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 885
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 888
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    .line 891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 892
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 895
    .end local v1    # "i":I
    :cond_3e
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 896
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    .line 898
    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 900
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 901
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 902
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 905
    :cond_55
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_60

    .line 906
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 907
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    .line 910
    :cond_60
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_6b

    .line 911
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 912
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    .line 915
    :cond_6b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_76

    .line 916
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 917
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 920
    :cond_76
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_81

    .line 921
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 922
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    .line 924
    :cond_81
    return-void
.end method

.method public final disposeMinimapOfCivilizations()V
    .registers 2

    .line 1321
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_7

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1326
    :cond_7
    goto :goto_9

    .line 1324
    :catch_8
    move-exception v0

    .line 1327
    :goto_9
    return-void
.end method

.method public final disposeMinimapOfCivilizations_Real()V
    .registers 2

    .line 1331
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_13

    .line 1332
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1333
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    .line 1335
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1339
    :cond_13
    goto :goto_15

    .line 1337
    :catch_14
    move-exception v0

    .line 1340
    :goto_15
    return-void
.end method

.method protected final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 290
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    invoke-interface {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 291
    return-void
.end method

.method protected final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "scale"    # F

    .line 1013
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v0, v0

    mul-float p4, p4, v0

    .line 1015
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "currID":I
    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    int-to-float v3, v3

    mul-float v3, v3, p4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .local v2, "tempHeight":I
    :goto_17
    if-ltz v0, :cond_63

    .line 1016
    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 1018
    .local v3, "tempWidth":I
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1f
    if-ltz v4, :cond_58

    .line 1020
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    float-to-int v7, v7

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    invoke-virtual {v5, p1, v6, v7, p4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1022
    int-to-float v5, v3

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p4

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 1024
    add-int/lit8 v1, v1, -0x1

    .line 1018
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    .line 1027
    .end local v4    # "i":I
    :cond_58
    int-to-float v4, v2

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    int-to-float v5, v5

    mul-float v5, v5, p4

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 1015
    .end local v3    # "tempWidth":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 1029
    .end local v0    # "j":I
    .end local v1    # "currID":I
    .end local v2    # "tempHeight":I
    :cond_63
    return-void
.end method

.method public final drawMapBG2_TechTree(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 721
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "currID":I
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    sub-int/2addr v2, v3

    .local v2, "tempHeight":I
    :goto_d
    if-ltz v0, :cond_3e

    .line 722
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    .line 724
    .local v3, "tempWidth":I
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_15
    if-ltz v4, :cond_38

    .line 725
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    add-int v5, p2, v3

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    sub-int v8, v5, v7

    add-int v9, p3, v2

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 727
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    sub-int/2addr v3, v5

    .line 729
    add-int/lit8 v1, v1, -0x1

    .line 724
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 732
    .end local v4    # "i":I
    :cond_38
    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    sub-int/2addr v2, v4

    .line 721
    .end local v3    # "tempWidth":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 734
    .end local v0    # "j":I
    .end local v1    # "currID":I
    .end local v2    # "tempHeight":I
    :cond_3e
    return-void
.end method

.method protected final drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 294
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    invoke-interface {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 295
    return-void
.end method

.method public final drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 25
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1032
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-nez v0, :cond_428

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_428

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_428

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_428

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_428

    .line 1034
    const/4 v9, 0x1

    .line 1037
    .local v9, "extraScale":I
    const/4 v10, 0x0

    :try_start_2a
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_356

    .line 1039
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_356

    .line 1043
    goto :goto_3a

    .line 1040
    :catch_31
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1041
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_34
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1045
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3a
    iput-boolean v10, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    .line 1048
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    .line 1049
    .local v0, "tMinX":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1050
    .local v2, "tMaxX":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    .line 1051
    .local v3, "tMinY":I
    const/4 v4, 0x0

    .line 1053
    .local v4, "tMaxY":I
    const/4 v12, 0x0

    .line 1124
    .local v12, "numOfProvinces":I
    const/4 v0, 0x0

    .line 1125
    const/4 v3, 0x0

    .line 1126
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    move v2, v5

    .line 1127
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v5

    move v4, v5

    .line 1130
    sub-int v5, v2, v0

    int-to-float v5, v5

    const/high16 v6, 0x3e000000    # 0.125f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 1132
    .local v5, "tempExtra":I
    sub-int v13, v0, v5

    .line 1133
    .end local v0    # "tMinX":I
    .local v13, "tMinX":I
    add-int v14, v2, v5

    .line 1135
    .end local v2    # "tMaxX":I
    .local v14, "tMaxX":I
    sub-int v0, v4, v3

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v15, v0

    .line 1137
    .end local v5    # "tempExtra":I
    .local v15, "tempExtra":I
    sub-int/2addr v3, v15

    .line 1138
    add-int v7, v4, v15

    .line 1140
    .end local v4    # "tMaxY":I
    .local v7, "tMaxY":I
    if-gez v3, :cond_72

    .line 1141
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_74

    .line 1140
    :cond_72
    move/from16 v16, v3

    .line 1144
    .end local v3    # "tMinY":I
    .local v16, "tMinY":I
    :goto_74
    const/4 v0, 0x0

    .line 1145
    .local v0, "tPosX":I
    const/4 v2, 0x0

    .line 1146
    .local v2, "tPosY":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1148
    .local v3, "tScale":F
    move v0, v13

    .line 1149
    move/from16 v2, v16

    .line 1153
    sub-int v4, v14, v13

    .line 1154
    .local v4, "tWidth":I
    sub-int v5, v7, v16

    .line 1157
    .local v5, "tHeight":I
    sub-int v6, v14, v13

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v6, v11

    sub-int v11, v7, v16

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v11, v10

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_c7

    .line 1159
    sub-int v6, v14, v13

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v6, v6, v10

    float-to-int v5, v6

    .line 1161
    sub-int v6, v7, v16

    div-int/lit8 v6, v6, 0x2

    add-int v6, v16, v6

    div-int/lit8 v10, v5, 0x2

    sub-int v2, v6, v10

    .line 1163
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-int v10, v14, v13

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float v10, v10, v11

    div-float/2addr v6, v10

    .end local v3    # "tScale":F
    .local v6, "tScale":F
    goto :goto_f7

    .line 1166
    .end local v6    # "tScale":F
    .restart local v3    # "tScale":F
    :cond_c7
    sub-int v6, v7, v16

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v6, v6, v10

    float-to-int v4, v6

    .line 1168
    sub-int v6, v14, v13

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v13

    div-int/lit8 v10, v4, 0x2

    sub-int v0, v6, v10

    .line 1170
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-int v10, v7, v16

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v10, v10, v11

    div-float/2addr v6, v10

    .line 1173
    .end local v3    # "tScale":F
    .restart local v6    # "tScale":F
    :goto_f7
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v2, v10

    .line 1175
    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v3, v10

    const v10, 0x3f733333    # 0.95f

    cmpl-float v3, v3, v10

    if-gez v3, :cond_127

    int-to-float v3, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v3, v11

    cmpl-float v3, v3, v10

    if-gez v3, :cond_127

    if-ltz v16, :cond_127

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    if-lt v7, v3, :cond_11f

    goto :goto_127

    :cond_11f
    move v10, v0

    move v11, v2

    move/from16 v22, v6

    move v6, v4

    move/from16 v4, v22

    goto :goto_13c

    .line 1176
    :cond_127
    :goto_127
    const/4 v0, 0x0

    .line 1177
    const/4 v2, 0x0

    .line 1178
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1179
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    move v4, v3

    .line 1180
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    move v5, v3

    move v10, v0

    move v11, v2

    move/from16 v22, v6

    move v6, v4

    move/from16 v4, v22

    .line 1183
    .end local v0    # "tPosX":I
    .end local v2    # "tPosY":I
    .local v4, "tScale":F
    .local v6, "tWidth":I
    .local v10, "tPosX":I
    .local v11, "tPosY":I
    :goto_13c
    iput v10, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    .line 1184
    iput v11, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    .line 1185
    iput v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    .line 1186
    iput v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    .line 1187
    iput v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    .line 1192
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1193
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1194
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    move/from16 v17, v4

    const/4 v4, 0x1

    .end local v4    # "tScale":F
    .local v17, "tScale":F
    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1195
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_16c
    .catchall {:try_start_34 .. :try_end_16c} :catchall_356

    .line 1198
    :try_start_16c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_16f} :catch_170
    .catchall {:try_start_16c .. :try_end_16f} :catchall_356

    .line 1202
    goto :goto_179

    .line 1199
    :catch_170
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1200
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_173
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1201
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1203
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_179
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int v0, v0, v9

    iget v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int v18, v3, v9

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p1

    move/from16 v20, v12

    move/from16 v12, v17

    .end local v17    # "tScale":F
    .local v12, "tScale":F
    .local v20, "numOfProvinces":I
    move/from16 v17, v5

    .end local v5    # "tHeight":I
    .local v17, "tHeight":I
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6    # "tWidth":I
    .local v19, "tWidth":I
    move v6, v0

    move/from16 v21, v7

    .end local v7    # "tMaxY":I
    .local v21, "tMaxY":I
    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_19a
    .catchall {:try_start_173 .. :try_end_19a} :catchall_356

    .line 1205
    :try_start_19a
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_19d} :catch_19e
    .catchall {:try_start_19a .. :try_end_19d} :catchall_356

    .line 1209
    goto :goto_1a7

    .line 1206
    :catch_19e
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1207
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_1a1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1211
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    int-to-float v3, v9

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    int-to-float v4, v9

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1212
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1213
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    int-to-float v3, v9

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    neg-float v3, v3

    int-to-float v4, v9

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1214
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_1ff
    .catchall {:try_start_1a1 .. :try_end_1ff} :catchall_356

    .line 1217
    :try_start_1ff
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_202} :catch_203
    .catchall {:try_start_1ff .. :try_end_202} :catchall_356

    .line 1221
    goto :goto_20c

    .line 1218
    :catch_203
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1219
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_206
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1220
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1223
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_20c
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int v2, v2, v9

    iget v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    neg-int v3, v3

    mul-int v3, v3, v9

    const/4 v4, 0x0

    invoke-static {v8, v4, v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 1225
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1227
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1233
    int-to-float v0, v10

    mul-float v0, v0, v12

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v2, v11

    mul-float v2, v2, v12

    float-to-int v2, v2

    neg-int v2, v2

    const/16 v3, 0xdc

    invoke-static {v8, v0, v2, v12, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1236
    int-to-float v0, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    add-float/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_25c

    .line 1242
    int-to-float v0, v10

    mul-float v0, v0, v12

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v0, v2

    int-to-float v2, v11

    mul-float v2, v2, v12

    float-to-int v2, v2

    neg-int v2, v2

    invoke-static {v8, v0, v2, v12, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1246
    :cond_25c
    if-gez v10, :cond_277

    .line 1252
    int-to-float v0, v10

    mul-float v0, v0, v12

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sub-int/2addr v0, v2

    int-to-float v2, v11

    mul-float v2, v2, v12

    float-to-int v2, v2

    neg-int v2, v2

    invoke-static {v8, v0, v2, v12, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1255
    const/4 v2, 0x1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    .line 1258
    :cond_277
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1261
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_27f
    .catchall {:try_start_206 .. :try_end_27f} :catchall_356

    .line 1264
    :try_start_27f
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_282} :catch_283
    .catchall {:try_start_27f .. :try_end_282} :catchall_356

    .line 1268
    goto :goto_28c

    .line 1265
    :catch_283
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1266
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_286
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1267
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_28c
    .catchall {:try_start_286 .. :try_end_28c} :catchall_356

    .line 1270
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v10    # "tPosX":I
    .end local v11    # "tPosY":I
    .end local v12    # "tScale":F
    .end local v13    # "tMinX":I
    .end local v14    # "tMaxX":I
    .end local v15    # "tempExtra":I
    .end local v16    # "tMinY":I
    .end local v17    # "tHeight":I
    .end local v19    # "tWidth":I
    .end local v20    # "numOfProvinces":I
    .end local v21    # "tMaxY":I
    :goto_28c
    :try_start_28c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1271
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1272
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1273
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_2b0} :catch_421

    .line 1276
    :try_start_2b0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b3} :catch_2b4

    .line 1280
    goto :goto_2bd

    .line 1277
    :catch_2b4
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1278
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_2b7
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1279
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1283
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2bd
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int v4, v4, v9

    sub-int/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int v4, v4, v9

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int v5, v5, v9

    const/4 v6, 0x0

    invoke-static {v6, v3, v4, v5}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    .line 1288
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1289
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1290
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_2f4} :catch_421

    .line 1294
    :try_start_2f4
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_2f7} :catch_2f8

    .line 1298
    goto :goto_301

    .line 1295
    :catch_2f8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1296
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_2fb
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1297
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1300
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_301
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1301
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1302
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1303
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_341} :catch_421

    .line 1305
    :try_start_341
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_344
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_344} :catch_345

    .line 1309
    goto :goto_34e

    .line 1306
    :catch_345
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1307
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_348
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1308
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1310
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_34e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1311
    nop

    .line 1315
    .end local v9    # "extraScale":I
    goto/16 :goto_428

    .line 1270
    .restart local v9    # "extraScale":I
    :catchall_356
    move-exception v0

    move-object v10, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1271
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1272
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1273
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_37c
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_37c} :catch_421

    .line 1276
    :try_start_37c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_37f
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_37f} :catch_380

    .line 1280
    goto :goto_389

    .line 1277
    :catch_380
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1278
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_383
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1279
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1283
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_389
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int v4, v4, v9

    sub-int/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int v4, v4, v9

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int v5, v5, v9

    const/4 v6, 0x0

    invoke-static {v6, v3, v4, v5}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    .line 1288
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1289
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1290
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_3c0
    .catch Ljava/lang/Exception; {:try_start_383 .. :try_end_3c0} :catch_421

    .line 1294
    :try_start_3c0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_3c3
    .catch Ljava/lang/Exception; {:try_start_3c0 .. :try_end_3c3} :catch_3c4

    .line 1298
    goto :goto_3cd

    .line 1295
    :catch_3c4
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1296
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_3c7
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1297
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1300
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3cd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1301
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1302
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1303
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_40d
    .catch Ljava/lang/Exception; {:try_start_3c7 .. :try_end_40d} :catch_421

    .line 1305
    :try_start_40d
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_40d .. :try_end_410} :catch_411

    .line 1309
    goto :goto_41a

    .line 1306
    :catch_411
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1307
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_414
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1308
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1310
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_41a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1311
    nop

    .end local p1    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    throw v10
    :try_end_421
    .catch Ljava/lang/Exception; {:try_start_414 .. :try_end_421} :catch_421

    .line 1312
    .end local v9    # "extraScale":I
    .restart local p1    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catch_421
    move-exception v0

    .line 1313
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1314
    const/4 v2, 0x1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    .line 1317
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_428
    :goto_428
    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 870
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    return v0
.end method

.method public getHeight_Real()I
    .registers 2

    .line 878
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap_Real:I

    return v0
.end method

.method public getHideMenuZoomOut()Z
    .registers 3

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Scale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public final getMinimapScaled_ScaleX()F
    .registers 3

    .line 950
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getMinimapScaled_ScaleY()F
    .registers 3

    .line 954
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getPreviewScaled_ScaleX()F
    .registers 3

    .line 976
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Width:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getPreviewScaled_ScaleY()F
    .registers 3

    .line 980
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Height:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 866
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    return v0
.end method

.method public getWidth_Real()I
    .registers 2

    .line 874
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap_Real:I

    return v0
.end method

.method public final loadMapBG()Z
    .registers 8

    .line 125
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    .local v0, "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    if-ge v0, v1, :cond_59

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    if-ge v1, v2, :cond_57

    .line 127
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "background/main/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 131
    .end local v1    # "i":I
    :cond_57
    const/4 v1, 0x1

    return v1

    .line 134
    .end local v0    # "j":I
    :cond_59
    const/4 v0, 0x0

    return v0
.end method

.method public final loadMapBG_Begin()V
    .registers 2

    .line 114
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    if-lez v0, :cond_7

    .line 115
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->dispose()V

    .line 118
    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundSize_X:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    .line 119
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundSize_Y:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    .line 120
    return-void
.end method

.method public final loadMapBG_End()V
    .registers 8

    .line 138
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    .line 140
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    if-ge v1, v2, :cond_24

    .line 142
    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 145
    .end local v1    # "i":I
    :cond_24
    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    if-ge v0, v1, :cond_43

    .line 147
    sget v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    mul-int v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 150
    .end local v0    # "i":I
    :cond_43
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 151
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    .line 153
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap_Real:I

    .line 154
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap_Real:I

    .line 156
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 157
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    .line 159
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateMapDistance()V

    .line 160
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth_Real()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/Map;->isWorldMap(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_ab

    const/4 v1, 0x2

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x1

    :goto_ac
    div-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight_Real()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    .line 161
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth_Real()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight_Real()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistanceManhattan:F

    .line 163
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG:I

    .line 164
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    .line 166
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    .line 167
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    .line 169
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    .line 171
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    .line 173
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_178

    .line 174
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    .line 177
    :cond_178
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_182

    .line 178
    sput v1, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    .line 181
    :cond_182
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Size_X:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    .line 182
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Size_Y:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    .line 183
    return-void
.end method

.method public final loadMapBG_ZoomOut()Z
    .registers 8

    .line 188
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    if-eqz v0, :cond_65

    .line 189
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    .local v0, "j":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    if-ge v0, v1, :cond_65

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    if-ge v1, v2, :cond_63

    .line 191
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "background/zoomOut/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 195
    .end local v1    # "i":I
    :cond_63
    const/4 v1, 0x1

    return v1

    .line 199
    .end local v0    # "j":I
    :cond_65
    const/4 v0, 0x0

    return v0
.end method

.method public final loadMapBG_ZoomOut_End()V
    .registers 5

    .line 203
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    if-eqz v0, :cond_79

    .line 204
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    .line 206
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    div-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    .line 207
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    div-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    .line 209
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    .line 210
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    .line 212
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_42
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    if-ge v0, v2, :cond_5a

    .line 214
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 217
    .end local v0    # "i":I
    :cond_5a
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    .line 218
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5d
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    if-ge v0, v1, :cond_79

    .line 219
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    mul-int v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 222
    .end local v0    # "i":I
    :cond_79
    return-void
.end method

.method public final loadMapBorder()V
    .registers 4

    .line 328
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 329
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-string v1, "gfx/map/MapBorder.json"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 330
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    .line 332
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->loadOutsideMapImages()V

    .line 333
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->loadOutsideMapImages_Below()V

    .line 334
    return-void
.end method

.method public final loadMinimap()V
    .registers 7

    .line 225
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "background/minimap/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "minimapBG.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 226
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "minimapOver.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    .line 228
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "scenarioBG.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 229
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "scenarioOver.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    .line 230
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scenarioMask.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    .line 231
    return-void
.end method

.method public final previewTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 29
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1342
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "preview.png"

    const-string v10, "/"

    const-string v11, "scenarios/"

    const-string v12, "map/"

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_18

    .line 1343
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 1344
    const/4 v0, 0x0

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    .line 1347
    :cond_18
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-nez v0, :cond_5a5

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5a5

    .line 1349
    const/4 v13, 0x1

    .line 1352
    .local v13, "extraScale":I
    const/4 v14, 0x0

    :try_start_26
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_43a

    .line 1354
    :try_start_29
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_43a

    .line 1358
    goto :goto_36

    .line 1355
    :catch_2d
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1356
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_30
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1357
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1360
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_36
    iput-boolean v14, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    .line 1368
    const/16 v16, 0x0

    .line 1370
    .local v16, "numOfProvinces":I
    const/4 v0, 0x0

    .line 1371
    .local v0, "tMinX":I
    const/4 v2, 0x0

    .line 1372
    .local v2, "tMinY":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    .line 1373
    .local v3, "tMaxX":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    .line 1375
    .local v4, "tMaxY":I
    sub-int v5, v3, v0

    int-to-float v5, v5

    const/high16 v6, 0x3e000000    # 0.125f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 1377
    .local v5, "tempExtra":I
    sub-int v17, v0, v5

    .line 1378
    .end local v0    # "tMinX":I
    .local v17, "tMinX":I
    add-int v18, v3, v5

    .line 1380
    .end local v3    # "tMaxX":I
    .local v18, "tMaxX":I
    sub-int v0, v4, v2

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v7, v0

    .line 1382
    .end local v5    # "tempExtra":I
    .local v7, "tempExtra":I
    sub-int/2addr v2, v7

    .line 1383
    add-int v6, v4, v7

    .line 1385
    .end local v4    # "tMaxY":I
    .local v6, "tMaxY":I
    if-gez v2, :cond_5f

    .line 1386
    const/4 v2, 0x0

    move/from16 v19, v2

    goto :goto_61

    .line 1385
    :cond_5f
    move/from16 v19, v2

    .line 1389
    .end local v2    # "tMinY":I
    .local v19, "tMinY":I
    :goto_61
    const/4 v0, 0x0

    .line 1390
    .local v0, "tPosX":I
    const/4 v2, 0x0

    .line 1391
    .local v2, "tPosY":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1393
    .local v3, "tScale":F
    move/from16 v0, v17

    .line 1394
    move/from16 v2, v19

    .line 1398
    sub-int v4, v18, v17

    .line 1399
    .local v4, "tWidth":I
    sub-int v5, v6, v19

    .line 1402
    .local v5, "tHeight":I
    sub-int v15, v18, v17

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v15, v14

    sub-int v14, v6, v19

    int-to-float v14, v14

    move/from16 v20, v0

    .end local v0    # "tPosX":I
    .local v20, "tPosX":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v14, v0

    cmpl-float v0, v15, v14

    if-ltz v0, :cond_bb

    .line 1404
    sub-int v0, v18, v17

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v0, v0, v14

    float-to-int v5, v0

    .line 1406
    sub-int v0, v6, v19

    div-int/lit8 v0, v0, 0x2

    add-int v0, v19, v0

    div-int/lit8 v14, v5, 0x2

    sub-int v2, v0, v14

    .line 1408
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-int v14, v18, v17

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v14, v14, v15

    div-float/2addr v0, v14

    move v3, v2

    move v2, v0

    move/from16 v0, v20

    .end local v3    # "tScale":F
    .local v0, "tScale":F
    goto :goto_f2

    .line 1411
    .end local v0    # "tScale":F
    .restart local v3    # "tScale":F
    :cond_bb
    sub-int v0, v6, v19

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v0, v0, v14

    float-to-int v4, v0

    .line 1413
    sub-int v0, v18, v17

    div-int/lit8 v0, v0, 0x2

    add-int v0, v17, v0

    div-int/lit8 v14, v4, 0x2

    sub-int/2addr v0, v14

    .line 1415
    .end local v20    # "tPosX":I
    .local v0, "tPosX":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v14

    int-to-float v14, v14

    sub-int v15, v6, v19

    int-to-float v15, v15

    move/from16 v20, v0

    .end local v0    # "tPosX":I
    .restart local v20    # "tPosX":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v15, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v15, v15, v0

    div-float v0, v14, v15

    .end local v3    # "tScale":F
    .local v0, "tScale":F
    move v3, v2

    move v2, v0

    move/from16 v0, v20

    .line 1418
    .end local v20    # "tPosX":I
    .local v0, "tPosX":I
    .local v2, "tScale":F
    .local v3, "tPosY":I
    :goto_f2
    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v3, v15

    .line 1420
    int-to-float v14, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    const v15, 0x3f733333    # 0.95f

    cmpl-float v14, v14, v15

    if-gez v14, :cond_125

    int-to-float v14, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    const v15, 0x3f733333    # 0.95f

    cmpl-float v14, v14, v15

    if-gez v14, :cond_125

    if-ltz v19, :cond_125

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v14

    if-lt v6, v14, :cond_11d

    goto :goto_125

    :cond_11d
    move v14, v0

    move v15, v2

    move/from16 v26, v5

    move v5, v3

    move/from16 v3, v26

    goto :goto_13a

    .line 1421
    :cond_125
    :goto_125
    const/4 v0, 0x0

    .line 1422
    const/4 v3, 0x0

    .line 1423
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1424
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v14

    move v4, v14

    .line 1425
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v14

    move v5, v14

    move v14, v0

    move v15, v2

    move/from16 v26, v5

    move v5, v3

    move/from16 v3, v26

    .line 1428
    .end local v0    # "tPosX":I
    .end local v2    # "tScale":F
    .local v3, "tHeight":I
    .local v5, "tPosY":I
    .local v14, "tPosX":I
    .local v15, "tScale":F
    :goto_13a
    iput v14, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosX:I

    .line 1429
    iput v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosY:I

    .line 1430
    iput v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Width:I

    .line 1431
    iput v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Height:I

    .line 1432
    iput v15, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaled_Scale:F

    .line 1437
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    move/from16 v20, v3

    .end local v3    # "tHeight":I
    .local v20, "tHeight":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1438
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1439
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    move/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "tWidth":I
    .local v21, "tWidth":I
    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1440
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_16c
    .catchall {:try_start_30 .. :try_end_16c} :catchall_43a

    .line 1443
    :try_start_16c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_16f} :catch_170
    .catchall {:try_start_16c .. :try_end_16f} :catchall_43a

    .line 1447
    goto :goto_179

    .line 1444
    :catch_170
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1445
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_173
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1446
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1448
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_179
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int v0, v0, v13

    iget v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int v22, v3, v13

    const/4 v4, 0x0

    const/16 v23, 0x0

    move-object/from16 v3, p1

    move/from16 v24, v5

    .end local v5    # "tPosY":I
    .local v24, "tPosY":I
    move/from16 v5, v23

    move/from16 v23, v6

    .end local v6    # "tMaxY":I
    .local v23, "tMaxY":I
    move v6, v0

    move/from16 v25, v7

    .end local v7    # "tempExtra":I
    .local v25, "tempExtra":I
    move/from16 v7, v22

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_196
    .catchall {:try_start_173 .. :try_end_196} :catchall_43a

    .line 1450
    :try_start_196
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_199} :catch_19a
    .catchall {:try_start_196 .. :try_end_199} :catchall_43a

    .line 1454
    goto :goto_1a3

    .line 1451
    :catch_19a
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1452
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_19d
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1453
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1456
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    int-to-float v3, v13

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    int-to-float v4, v13

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1457
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1458
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    int-to-float v3, v13

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    neg-float v3, v3

    int-to-float v4, v13

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1459
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_1fb
    .catchall {:try_start_19d .. :try_end_1fb} :catchall_43a

    .line 1462
    :try_start_1fb
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_1fe} :catch_1ff
    .catchall {:try_start_1fb .. :try_end_1fe} :catchall_43a

    .line 1466
    goto :goto_208

    .line 1463
    :catch_1ff
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1464
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_202
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1465
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1468
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_208
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int v2, v2, v13

    iget v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    neg-int v3, v3

    mul-int v3, v3, v13

    const/4 v4, 0x0

    invoke-static {v8, v4, v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 1470
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1472
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1475
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    const/16 v2, 0xdc

    if-eqz v0, :cond_237

    .line 1476
    int-to-float v0, v14

    mul-float v0, v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    move/from16 v3, v24

    .end local v24    # "tPosY":I
    .local v3, "tPosY":I
    int-to-float v4, v3

    mul-float v4, v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v0, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_246

    .line 1478
    .end local v3    # "tPosY":I
    .restart local v24    # "tPosY":I
    :cond_237
    move/from16 v3, v24

    .end local v24    # "tPosY":I
    .restart local v3    # "tPosY":I
    int-to-float v0, v14

    mul-float v0, v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v4, v3

    mul-float v4, v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v0, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1481
    :goto_246
    int-to-float v0, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float/2addr v0, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_289

    .line 1484
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_273

    .line 1485
    int-to-float v0, v14

    mul-float v0, v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    float-to-int v4, v4

    add-int/2addr v0, v4

    int-to-float v4, v3

    mul-float v4, v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v0, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_289

    .line 1487
    :cond_273
    int-to-float v0, v14

    mul-float v0, v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    float-to-int v4, v4

    add-int/2addr v0, v4

    int-to-float v4, v3

    mul-float v4, v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v0, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1491
    :cond_289
    :goto_289
    if-gez v14, :cond_2bf

    .line 1494
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_2a6

    .line 1495
    int-to-float v0, v14

    mul-float v0, v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    float-to-int v4, v4

    sub-int/2addr v0, v4

    int-to-float v4, v3

    mul-float v4, v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v0, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_2bc

    .line 1497
    :cond_2a6
    int-to-float v0, v14

    mul-float v0, v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    float-to-int v4, v4

    sub-int/2addr v0, v4

    int-to-float v4, v3

    mul-float v4, v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v0, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1500
    :goto_2bc
    const/4 v2, 0x1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    .line 1503
    :cond_2bf
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1506
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2c7
    .catchall {:try_start_202 .. :try_end_2c7} :catchall_43a

    .line 1509
    :try_start_2c7
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2ca} :catch_2cb
    .catchall {:try_start_2c7 .. :try_end_2ca} :catchall_43a

    .line 1513
    goto :goto_2d4

    .line 1510
    :catch_2cb
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1511
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_2ce
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1512
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_2d4
    .catchall {:try_start_2ce .. :try_end_2d4} :catchall_43a

    .line 1515
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "tPosY":I
    .end local v14    # "tPosX":I
    .end local v15    # "tScale":F
    .end local v16    # "numOfProvinces":I
    .end local v17    # "tMinX":I
    .end local v18    # "tMaxX":I
    .end local v19    # "tMinY":I
    .end local v20    # "tHeight":I
    .end local v21    # "tWidth":I
    .end local v23    # "tMaxY":I
    .end local v25    # "tempExtra":I
    :goto_2d4
    :try_start_2d4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1516
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1517
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1518
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_2f8} :catch_5a1

    .line 1521
    :try_start_2f8
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2f8 .. :try_end_2fb} :catch_2fc

    .line 1525
    goto :goto_305

    .line 1522
    :catch_2fc
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1523
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_2ff
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1524
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1528
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_305
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int v4, v4, v13

    sub-int/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int v4, v4, v13

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int v5, v5, v13

    const/4 v6, 0x0

    invoke-static {v6, v3, v4, v5}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;
    :try_end_325
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_325} :catch_5a1

    .line 1531
    :try_start_325
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_332
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_332} :catch_333

    .line 1534
    goto :goto_334

    .line 1532
    :catch_333
    move-exception v0

    .line 1536
    :goto_334
    :try_start_334
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_37d

    .line 1537
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto :goto_3c1

    .line 1539
    :cond_37d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 1543
    :goto_3c1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1544
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1545
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_3d8
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_3d8} :catch_5a1

    .line 1549
    :try_start_3d8
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_3db
    .catch Ljava/lang/Exception; {:try_start_3d8 .. :try_end_3db} :catch_3dc

    .line 1553
    goto :goto_3e5

    .line 1550
    :catch_3dc
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1551
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_3df
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1552
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1555
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3e5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1556
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1557
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1558
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_425
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_425} :catch_5a1

    .line 1560
    :try_start_425
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_428
    .catch Ljava/lang/Exception; {:try_start_425 .. :try_end_428} :catch_429

    .line 1564
    goto :goto_432

    .line 1561
    :catch_429
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1562
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_42c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1563
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1565
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_432
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1566
    nop

    .line 1569
    .end local v13    # "extraScale":I
    goto/16 :goto_5a5

    .line 1515
    .restart local v13    # "extraScale":I
    :catchall_43a
    move-exception v0

    move-object v14, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1516
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1517
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1518
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_460
    .catch Ljava/lang/Exception; {:try_start_42c .. :try_end_460} :catch_5a1

    .line 1521
    :try_start_460
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_463
    .catch Ljava/lang/Exception; {:try_start_460 .. :try_end_463} :catch_464

    .line 1525
    goto :goto_46d

    .line 1522
    :catch_464
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1523
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_467
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1524
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1528
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_46d
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int v4, v4, v13

    sub-int/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int v4, v4, v13

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int v5, v5, v13

    const/4 v6, 0x0

    invoke-static {v6, v3, v4, v5}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;
    :try_end_48d
    .catch Ljava/lang/Exception; {:try_start_467 .. :try_end_48d} :catch_5a1

    .line 1531
    :try_start_48d
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_49a
    .catch Ljava/lang/Exception; {:try_start_48d .. :try_end_49a} :catch_49b

    .line 1534
    goto :goto_49c

    .line 1532
    :catch_49b
    move-exception v0

    .line 1536
    :goto_49c
    :try_start_49c
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_4e5

    .line 1537
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto :goto_529

    .line 1539
    :cond_4e5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 1543
    :goto_529
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1544
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1545
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_540
    .catch Ljava/lang/Exception; {:try_start_49c .. :try_end_540} :catch_5a1

    .line 1549
    :try_start_540
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_543
    .catch Ljava/lang/Exception; {:try_start_540 .. :try_end_543} :catch_544

    .line 1553
    goto :goto_54d

    .line 1550
    :catch_544
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1551
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_547
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1552
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1555
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_54d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 1556
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 1557
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 1558
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_58d
    .catch Ljava/lang/Exception; {:try_start_547 .. :try_end_58d} :catch_5a1

    .line 1560
    :try_start_58d
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_590
    .catch Ljava/lang/Exception; {:try_start_58d .. :try_end_590} :catch_591

    .line 1564
    goto :goto_59a

    .line 1561
    :catch_591
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1562
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_594
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1563
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1565
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_59a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1566
    nop

    .end local p1    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    throw v14
    :try_end_5a1
    .catch Ljava/lang/Exception; {:try_start_594 .. :try_end_5a1} :catch_5a1

    .line 1567
    .end local v13    # "extraScale":I
    .restart local p1    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catch_5a1
    move-exception v0

    .line 1568
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1571
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5a5
    :goto_5a5
    return-void
.end method

.method public final updateActiveMapBGShader()V
    .registers 3

    .line 244
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DISEASES:I

    if-ne v0, v1, :cond_1a

    .line 247
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    goto :goto_21

    .line 262
    :cond_1a
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 286
    :goto_21
    goto :goto_2a

    .line 274
    :catch_22
    move-exception v0

    .line 275
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapBG$3;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    .line 287
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public updateMapBGSea()V
    .registers 2

    .line 603
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_DISABLE_SEA_WAVES:Z

    if-nez v0, :cond_d

    goto :goto_15

    .line 620
    :cond_d
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$10;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$10;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    goto :goto_1c

    .line 604
    :cond_15
    :goto_15
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$9;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$9;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    .line 627
    :goto_1c
    return-void
.end method

.method public final updateMinimapResolution()V
    .registers 3

    .line 942
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    .line 943
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleY()V

    .line 944
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    .line 946
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleX()V

    .line 947
    return-void
.end method

.method protected final updateMinimapScaleX()V
    .registers 3

    .line 934
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    .line 935
    return-void
.end method

.method protected final updateMinimapScaleXY()V
    .registers 1

    .line 929
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleX()V

    .line 930
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleY()V

    .line 931
    return-void
.end method

.method protected final updateMinimapScaleY()V
    .registers 3

    .line 938
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    .line 939
    return-void
.end method

.method public updateOutsideTheMap_Scale()V
    .registers 4

    .line 747
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    if-eqz v0, :cond_1d

    :cond_8
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale2:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e7ae148    # 0.245f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 748
    return-void

    .line 751
    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale2:F

    .line 753
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_37

    .line 754
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    .line 755
    return-void

    .line 758
    :cond_37
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    div-float/2addr v2, v0

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    .line 759
    return-void
.end method

.method public final updatePreviewResolution()V
    .registers 3

    .line 968
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    .line 969
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updatePreviewScaleY()V

    .line 970
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    .line 972
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updatePreviewScaleX()V

    .line 973
    return-void
.end method

.method protected final updatePreviewScaleX()V
    .registers 3

    .line 960
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaleX:F

    .line 961
    return-void
.end method

.method protected final updatePreviewScaleY()V
    .registers 3

    .line 964
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaleY:F

    .line 965
    return-void
.end method

.method public final updateWorldMap()V
    .registers 3

    .line 435
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    if-eqz v0, :cond_5f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_5f

    .line 445
    :cond_2d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->isWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 446
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    if-eqz v0, :cond_4f

    .line 447
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    goto :goto_66

    .line 520
    :cond_4f
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    goto :goto_66

    .line 540
    :cond_57
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    goto :goto_66

    .line 436
    :cond_5f
    :goto_5f
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    .line 581
    :goto_66
    return-void
.end method
