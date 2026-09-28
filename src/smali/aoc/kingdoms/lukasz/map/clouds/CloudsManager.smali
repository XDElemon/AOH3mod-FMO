.class public Laoc/kingdoms/lukasz/map/clouds/CloudsManager;
.super Ljava/lang/Object;
.source "CloudsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;,
        Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;
    }
.end annotation


# static fields
.field public static updateInViewID:I


# instance fields
.field public cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

.field public cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

.field private fDimAlpha:F

.field private iCloudsSize:I

.field public imageCloud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public imageCloudMaxDimension:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lClouds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/clouds/Cloud;",
            ">;"
        }
    .end annotation
.end field

.field private lTimeDimInAlpha:J

.field private lTimeDimOutAlpha:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 115
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateInViewID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloudMaxDimension:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimOutAlpha:J

    .line 29
    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimInAlpha:J

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    .line 38
    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    .line 149
    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$1;-><init>(Laoc/kingdoms/lukasz/map/clouds/CloudsManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    .line 35
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->readSettings()V

    .line 36
    return-void
.end method


# virtual methods
.method public final addCloud()V
    .registers 4

    .line 98
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->addCloud(II)V

    .line 99
    return-void
.end method

.method public final addCloud(II)V
    .registers 12
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 102
    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->maxNumOfCloudsInTheGame:I

    if-ge v0, v1, :cond_60

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-lez v0, :cond_60

    .line 103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 105
    .local v0, "tempID":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    .line 108
    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v6, v2, v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    .line 109
    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    move-object v2, v8

    move v3, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/clouds/Cloud;-><init>(IIIFI)V

    .line 105
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    .line 113
    .end local v0    # "tempID":I
    :cond_60
    return-void
.end method

.method public final drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 177
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->drawCloudsMinScale:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 178
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->drawCloudsMaxScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4d

    .line 180
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimOutAlpha:J

    .line 182
    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_47

    .line 183
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimInAlpha:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v0, v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    .line 184
    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    .line 187
    :cond_47
    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_83

    .line 190
    :cond_4d
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimOutAlpha:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v0, v0, v3

    sub-float/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    .line 192
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    mul-float v2, v2, v3

    float-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimInAlpha:J

    .line 194
    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_83

    .line 195
    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 199
    :cond_83
    :goto_83
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 200
    return-void
.end method

.method public final drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "modAlpha"    # F

    .line 203
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateClouds()V

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v0, v1, :cond_a4

    .line 207
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->isInView:Z

    if-eqz v1, :cond_a0

    .line 208
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fAlpha:F

    mul-float v2, v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 210
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iCloudImageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    .line 211
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    float-to-int v1, v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX_SecondSideOfMap:I

    add-int/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iShadowX:I

    add-int v4, v1, v3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    .line 212
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    float-to-int v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iShadowY:I

    add-int v5, v1, v3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fScale:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v6, v1, v3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iRotate:I

    int-to-float v7, v1

    .line 210
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 206
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 216
    .end local v0    # "i":I
    :cond_a4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_be

    .line 217
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    mul-float p2, p2, v0

    .line 221
    :cond_be
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_bf
    iget v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v0, v2, :cond_144

    .line 222
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->isInView:Z

    if-eqz v2, :cond_140

    .line 223
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fAlpha:F

    mul-float v3, v3, p2

    invoke-direct {v2, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 225
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iCloudImageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    .line 226
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    float-to-int v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v4, v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX_SecondSideOfMap:I

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    add-int v5, v2, v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    .line 227
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    float-to-int v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int v6, v2, v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v7, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fScale:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iRotate:I

    int-to-float v8, v2

    .line 225
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 221
    :cond_140
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_bf

    .line 231
    .end local v0    # "i":I
    :cond_144
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 232
    return-void
.end method

.method public loadClouds()Z
    .registers 2

    .line 63
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_LOAD_CLOUDS:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final loadCloudsImages()V
    .registers 5

    .line 67
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->loadClouds()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-ge v0, v1, :cond_32

    .line 69
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gfx/clouds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 72
    .end local v0    # "i":I
    :cond_32
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_33
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-ge v0, v1, :cond_61

    .line 73
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloudMaxDimension:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 76
    .end local v0    # "i":I
    :cond_61
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_62
    const/16 v1, 0x19

    if-ge v0, v1, :cond_6c

    .line 77
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->addCloud()V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 80
    .end local v0    # "i":I
    :cond_6c
    return-void
.end method

.method public final randomSpawnCloud()V
    .registers 3

    .line 138
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnCloudChance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    .line 139
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->addCloud()V

    .line 141
    :cond_11
    return-void
.end method

.method public final readSettings()V
    .registers 6

    .line 83
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 84
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gfx/clouds/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v2, :cond_17

    const-string v2, "Config.json"

    goto :goto_19

    :cond_17
    const-string v2, "ConfigLow.json"

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 85
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    .line 87
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->moveSpeedY:F

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->moveSpeedY:F

    .line 88
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->randomAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->randomAlpha:F

    .line 90
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->loadClouds()Z

    move-result v2

    if-nez v2, :cond_57

    .line 91
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    const/4 v3, 0x0

    iput v3, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    .line 93
    :cond_57
    return-void
.end method

.method public final updateClouds()V
    .registers 3

    .line 118
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 119
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->removeCloud()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 120
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    .line 118
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 125
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->randomSpawnCloud()V

    .line 127
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2c
    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v0, v1, :cond_3e

    .line 128
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->update()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 131
    .end local v0    # "i":I
    :cond_3e
    sget v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateInViewID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    sput v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateInViewID:I

    .line 132
    sget v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateInViewID:I

    .restart local v0    # "i":I
    :goto_48
    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v0, v1, :cond_5a

    .line 133
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->updateIsInView()V

    .line 132
    add-int/lit8 v0, v0, 0x8

    goto :goto_48

    .line 135
    .end local v0    # "i":I
    :cond_5a
    return-void
.end method

.method public final updateCloudsInterface()V
    .registers 2

    .line 155
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CLOUDS:Z

    if-nez v0, :cond_16

    .line 156
    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$2;-><init>(Laoc/kingdoms/lukasz/map/clouds/CloudsManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    .line 161
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    goto :goto_1d

    .line 165
    :cond_16
    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$3;-><init>(Laoc/kingdoms/lukasz/map/clouds/CloudsManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    .line 172
    :goto_1d
    return-void
.end method
