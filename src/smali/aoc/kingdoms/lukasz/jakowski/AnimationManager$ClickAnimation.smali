.class public Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClickAnimation"
.end annotation


# instance fields
.field public clickPosX:I

.field public clickPosY:I

.field public clickTime:J

.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/AnimationManager;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/AnimationManager;II)V
    .registers 7
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/AnimationManager;
    .param p2, "nX"    # I
    .param p3, "nY"    # I

    .line 88
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->this$0:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickTime:J

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosX:I

    .line 86
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosY:I

    .line 89
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickTime:J

    .line 90
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v1, p2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->click:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosX:I

    .line 91
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v1, p3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->click:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosY:I

    .line 92
    return-void
.end method
