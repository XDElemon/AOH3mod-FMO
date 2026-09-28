.class public Laoc/kingdoms/lukasz/map/map/MapCoords;
.super Ljava/lang/Object;
.source "MapCoords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;
    }
.end annotation


# instance fields
.field public disableMovingMap:Z

.field private drawMapBorder:Z

.field private iMaxPosScaledY:I

.field private iMaxPosY:I

.field private iMinPosScaledX:I

.field private iMinPosScaledY:I

.field private iMinPosY:I

.field private iNewPosX:I

.field private iNewPosY:I

.field private iPosX:I

.field private iPosY:I

.field private iSecondSideOfMap_TranslateX:I

.field private secondSideOfMap:Z

.field private worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    .line 14
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    .line 17
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I

    .line 22
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->drawMapBorder:Z

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/map/map/MapCoords;)Z
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 9
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    return v0
.end method

.method static synthetic access$002(Laoc/kingdoms/lukasz/map/map/MapCoords;Z)Z
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;
    .param p1, "x1"    # Z

    .line 9
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    return p1
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/map/map/MapCoords;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 9
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    return v0
.end method

.method static synthetic access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;
    .param p1, "x1"    # I

    .line 9
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    return p1
.end method

.method static synthetic access$202(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;
    .param p1, "x1"    # I

    .line 9
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I

    return p1
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 9
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    return v0
.end method

.method static synthetic access$302(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;
    .param p1, "x1"    # I

    .line 9
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    return p1
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 9
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    return v0
.end method


# virtual methods
.method public final centerToMinimapClick(II)V
    .registers 9
    .param p1, "nX"    # I
    .param p2, "nY"    # I

    .line 219
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 220
    .local v0, "tempScaleX":F
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 222
    .local v1, "tempScaleY":F
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 223
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    int-to-float v4, p1

    mul-float v4, v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    int-to-float v5, p2

    mul-float v5, v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent_ToPosition(II)V

    .line 224
    return-void
.end method

.method public final centerToProvinceID(I)V
    .registers 3
    .param p1, "i"    # I

    .line 211
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 212
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 215
    goto :goto_c

    .line 213
    :catch_b
    move-exception v0

    .line 216
    :goto_c
    return-void
.end method

.method protected final checkPositionOfMapX()V
    .registers 3

    .line 139
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    neg-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1b

    .line 140
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    .line 141
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    goto :goto_2e

    .line 142
    :cond_1b
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    if-lez v0, :cond_2e

    .line 143
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    .line 144
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    .line 146
    :cond_2e
    :goto_2e
    return-void
.end method

.method protected final checkPositionOfMapY()V
    .registers 5

    .line 150
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    neg-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_29

    .line 151
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v1, v2

    rem-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    .line 152
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    goto :goto_63

    .line 153
    :cond_29
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_63

    .line 154
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    .line 155
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    .line 157
    :cond_63
    :goto_63
    return-void
.end method

.method public getDisableMovingMap()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    return v0
.end method

.method public final getMinimapPosX(I)I
    .registers 5
    .param p1, "nX"    # I

    .line 227
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 229
    .local v0, "tempScaleX":F
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    int-to-float v2, p1

    mul-float v2, v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final getMinimapPosY(I)I
    .registers 5
    .param p1, "nY"    # I

    .line 233
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 235
    .local v0, "tempScaleY":F
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    int-to-float v2, p1

    mul-float v2, v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method

.method protected final getNewPosX()I
    .registers 2

    .line 250
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    return v0
.end method

.method protected final getNewPosY()I
    .registers 2

    .line 242
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    return v0
.end method

.method public getPosX()I
    .registers 2

    .line 266
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 258
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    return v0
.end method

.method public final getSecondSideOfMap()Z
    .registers 2

    .line 282
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    return v0
.end method

.method public final getSecondSideOfMap_MoveX()I
    .registers 2

    .line 286
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I

    return v0
.end method

.method public setDisableMovingMap(Z)V
    .registers 2
    .param p1, "disableMovingMap"    # Z

    .line 278
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    .line 279
    return-void
.end method

.method public final setNewPosX(I)V
    .registers 2
    .param p1, "iNewPosX"    # I

    .line 254
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    .line 255
    return-void
.end method

.method public final setNewPosY(I)V
    .registers 2
    .param p1, "iNewPosY"    # I

    .line 246
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    .line 247
    return-void
.end method

.method public setPosX(I)V
    .registers 2
    .param p1, "posX"    # I

    .line 270
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    .line 271
    return-void
.end method

.method public setPosY(I)V
    .registers 2
    .param p1, "posY"    # I

    .line 262
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    .line 263
    return-void
.end method

.method public final updateMapPosition()V
    .registers 7

    .line 107
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    .line 108
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setUpdateProvincesInView(Z)V

    .line 109
    sput-boolean v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 111
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;->updateMapPosX()V

    .line 115
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    if-eq v0, v1, :cond_c1

    .line 116
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setUpdateProvincesInView(Z)V

    .line 117
    sput-boolean v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 119
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v1, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    if-le v0, v1, :cond_56

    .line 120
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    .line 121
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosY(Z)V

    goto :goto_be

    .line 123
    :cond_56
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosY:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ba

    .line 124
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosY:I

    int-to-float v1, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    .line 125
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosY(Z)V

    goto :goto_be

    .line 128
    :cond_ba
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    .line 131
    :goto_be
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapY()V

    .line 133
    :cond_c1
    return-void
.end method

.method public final updateMinMaxPosY()V
    .registers 4

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    .line 182
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosY:I

    .line 185
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->drawMapBorder:Z

    if-eqz v1, :cond_62

    .line 186
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    .line 187
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    .line 189
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/Map;->getMapWorldMap(I)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 190
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    goto :goto_68

    .line 193
    :cond_5f
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    goto :goto_68

    .line 197
    :cond_62
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    .line 198
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    .line 200
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    .line 202
    :goto_68
    return-void
.end method

.method public final updateSecondSideOfMap()V
    .registers 2

    .line 206
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;->updateSecondSideOfMap()V

    .line 207
    return-void
.end method

.method protected final updateWorldMap()V
    .registers 3

    .line 44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->getMapWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 45
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCoords$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapCoords;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    goto :goto_1d

    .line 75
    :cond_16
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCoords$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapCoords;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    .line 102
    :goto_1d
    return-void
.end method
