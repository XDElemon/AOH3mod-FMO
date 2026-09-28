.class public Laoc/kingdoms/lukasz/map/map/Ship/Ship2;
.super Ljava/lang/Object;
.source "Ship2.java"


# static fields
.field public static final IMG_WH:I = 0x20


# instance fields
.field public angle:I

.field public currentWidth:F

.field public isInView:Z

.field public movingBack:Z

.field public posX:F

.field public posY:F

.field public remove:Z

.field public shipIMGID:I

.field public shipLineID:I

.field public speed:F

.field public tID:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "nShipLineID"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    .line 29
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    .line 33
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    .line 36
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    .line 38
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->randomize()V

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "ageGroup"    # I

    .line 113
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_58

    .line 114
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipIMGID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 115
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateXMoveUnits:[I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v2, v2, v3

    add-int v3, v0, v2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 116
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateYMoveUnits:[I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v2, v2, v4

    add-int v4, v0, v2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    int-to-float v7, v0

    .line 114
    const/16 v5, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    .line 121
    :cond_58
    return-void
.end method

.method public drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "ageGroup"    # I

    .line 102
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_48

    .line 103
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipIMGID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 104
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateXMoveUnits:[I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v2, v2, v3

    add-int v3, v0, v2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 105
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateYMoveUnits:[I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v2, v2, v4

    add-int v4, v0, v2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    int-to-float v7, v0

    .line 103
    const/16 v5, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    .line 110
    :cond_48
    return-void
.end method

.method public final inViewX()Z
    .registers 4

    .line 152
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public final inViewX2()Z
    .registers 4

    .line 157
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 158
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 157
    :goto_2c
    return v0
.end method

.method public final inViewY()Z
    .registers 4

    .line 147
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public final randomize()V
    .registers 4

    .line 44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_IMAGES:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipIMGID:I

    .line 45
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_SPEED_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_SPEED_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->speed:F

    .line 46
    return-void
.end method

.method public final update()V
    .registers 13

    .line 51
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->speed:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    .line 53
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    const/4 v1, 0x0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v6, 0x4076800000000000L    # 360.0

    const/4 v8, 0x1

    if-eqz v0, :cond_189

    .line 54
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_6e

    .line 55
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v0, v8

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    if-ge v0, v8, :cond_50

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    .line 57
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    .line 58
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->randomize()V

    .line 59
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    .line 60
    iput-boolean v8, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    .line 61
    return-void

    .line 64
    :cond_50
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    .line 67
    :cond_6e
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v9, v8

    aget-object v1, v1, v9

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v9

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v1, v1, v9

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v9, v8

    aget-object v1, v1, v9

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v9

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v1, v1, v9

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    .line 70
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->updateIsInView()V

    .line 72
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_2fd

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v9, v8

    aget-object v1, v1, v9

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v9, v9

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v11, v8

    aget-object v8, v10, v11

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v9, v8

    float-to-double v8, v9

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    div-double/2addr v0, v2

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    goto/16 :goto_2fd

    .line 77
    :cond_189
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_1e4

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v0, v8

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    add-int/lit8 v9, v9, -0x2

    if-le v0, v9, :cond_1c6

    .line 79
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    sub-int/2addr v0, v8

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    .line 80
    iput-boolean v8, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    .line 81
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->randomize()V

    .line 82
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    .line 83
    iput-boolean v8, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    .line 84
    return-void

    .line 87
    :cond_1c6
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    .line 90
    :cond_1e4
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v9, v8

    aget-object v1, v1, v9

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v9

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v1, v1, v9

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    .line 91
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v9, v8

    aget-object v1, v1, v9

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v9

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v1, v1, v9

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    .line 93
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->updateIsInView()V

    .line 95
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_2fd

    .line 96
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v9, v8

    aget-object v1, v1, v9

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v9, v9

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v11, v8

    aget-object v8, v10, v11

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v9, v8

    float-to-double v8, v9

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    div-double/2addr v0, v2

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    .line 99
    :cond_2fd
    :goto_2fd
    return-void
.end method

.method public final updateIsInView()V
    .registers 2

    .line 126
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->inViewY()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 127
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->inViewX()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    .line 130
    return-void

    .line 141
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    .line 142
    return-void
.end method
