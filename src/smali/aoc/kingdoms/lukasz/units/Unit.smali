.class public Laoc/kingdoms/lukasz/units/Unit;
.super Ljava/lang/Object;
.source "Unit.java"


# instance fields
.field private ANIMATION_LAST_UPDATE_TIME:J

.field private currentFrameID:I

.field private fPosX:F

.field private fPosY:F

.field private iDirection:I

.field private iHP:I

.field public movePath:Laoc/kingdoms/lukasz/units/Path;


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    .line 35
    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    .line 45
    int-to-float v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    .line 46
    int-to-float v0, p2

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    .line 47
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/UnitType;->getMaxHP()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    .line 49
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    .line 50
    return-void
.end method


# virtual methods
.method public currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;
    .registers 3

    .line 174
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    if-eqz v0, :cond_d

    .line 175
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/UnitType;->getAnimation_Walk()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    return-object v0

    .line 178
    :cond_d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/units/UnitType;->getAnimation_Idle(I)Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    return-object v0
.end method

.method public final drawHP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 155
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 156
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Height()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 158
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 159
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Height()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f2e147b    # 0.68f

    mul-float v0, v0, v2

    float-to-int v5, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 160
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 161
    return-void
.end method

.method public final drawHitBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 149
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/units/Animation_Unit;->drawFrameHitboxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 150
    return-void
.end method

.method public final drawUnit(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 142
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/units/Unit;->drawHitBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 143
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/units/Unit;->drawHP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 145
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    iget v5, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/units/Animation_Unit;->drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 146
    return-void
.end method

.method public final getDirection()I
    .registers 2

    .line 220
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    return v0
.end method

.method public final getHP()I
    .registers 2

    .line 228
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    return v0
.end method

.method public final getHP_Height()I
    .registers 2

    .line 168
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/Hitbox;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getHP_Width()I
    .registers 2

    .line 164
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/Hitbox;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMaxHP()I
    .registers 2

    .line 236
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/UnitType;->getMaxHP()I

    move-result v0

    return v0
.end method

.method public final getPosX()I
    .registers 2

    .line 189
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    float-to-int v0, v0

    return v0
.end method

.method public final getPosY()I
    .registers 2

    .line 193
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    float-to-int v0, v0

    return v0
.end method

.method public final getSpeed()F
    .registers 2

    .line 224
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/UnitType;->getUnitSpeed()F

    move-result v0

    return v0
.end method

.method public getUnitType()Laoc/kingdoms/lukasz/units/UnitType;
    .registers 2

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final movePosX(F)V
    .registers 4
    .param p1, "nChange"    # F

    .line 205
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    .line 206
    return-void
.end method

.method public final movePosY(F)V
    .registers 4
    .param p1, "nChange"    # F

    .line 209
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    .line 210
    return-void
.end method

.method public final resetAnimation()V
    .registers 3

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    .line 183
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    .line 184
    return-void
.end method

.method public final setDirection(I)V
    .registers 3
    .param p1, "iDirection"    # I

    .line 213
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    if-eq v0, p1, :cond_9

    .line 214
    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    .line 215
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->resetAnimation()V

    .line 217
    :cond_9
    return-void
.end method

.method public final setHP(I)V
    .registers 2
    .param p1, "iHP"    # I

    .line 232
    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    .line 233
    return-void
.end method

.method public final setPosX(I)V
    .registers 3
    .param p1, "nPosX"    # I

    .line 197
    int-to-float v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    .line 198
    return-void
.end method

.method public final setPosY(I)V
    .registers 3
    .param p1, "nPosY"    # I

    .line 201
    int-to-float v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    .line 202
    return-void
.end method

.method public update()V
    .registers 7

    .line 62
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->updatePath()V

    .line 64
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/units/Animation_Unit;->ANIMATION_FRAME_TIME:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_2a

    .line 65
    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/units/Animation_Unit;->getNumOfFrames()I

    move-result v1

    if-lt v0, v1, :cond_26

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    .line 69
    :cond_26
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    .line 71
    :cond_2a
    return-void
.end method

.method protected final updatePath()V
    .registers 8

    .line 74
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    if-eqz v0, :cond_114

    .line 75
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    if-le v0, v2, :cond_4a

    .line 76
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 77
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 78
    return-void

    .line 80
    :cond_2f
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_45

    .line 81
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 82
    return-void

    .line 85
    :cond_45
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 86
    return-void

    .line 89
    :cond_4a
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ge v0, v2, :cond_8f

    .line 90
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-ge v0, v2, :cond_74

    .line 91
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 92
    return-void

    .line 94
    :cond_74
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_8a

    .line 95
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 96
    return-void

    .line 99
    :cond_8a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 100
    return-void

    .line 104
    :cond_8f
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-le v0, v2, :cond_d1

    .line 105
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    if-le v0, v2, :cond_b7

    .line 106
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 107
    return-void

    .line 109
    :cond_b7
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    if-ge v0, v2, :cond_cd

    .line 110
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 111
    return-void

    .line 114
    :cond_cd
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 115
    return-void

    .line 119
    :cond_d1
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-ge v0, v2, :cond_114

    .line 120
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    if-le v0, v2, :cond_f9

    .line 121
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 122
    return-void

    .line 124
    :cond_f9
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v1

    if-ge v0, v1, :cond_10f

    .line 125
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 126
    return-void

    .line 129
    :cond_10f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    .line 130
    return-void

    .line 136
    :cond_114
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    .line 137
    return-void
.end method
