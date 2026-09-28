.class public Laoc/kingdoms/lukasz/units/Animation_Unit;
.super Ljava/lang/Object;
.source "Animation_Unit.java"


# instance fields
.field public ANIMATION_FRAME_TIME:I

.field private animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

.field protected hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

.field private iNumOfFrames:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V
    .registers 8
    .param p1, "sFilePath"    # Ljava/lang/String;
    .param p2, "regionWidth"    # I
    .param p3, "regionHeight"    # I
    .param p4, "hitbox"    # Laoc/kingdoms/lukasz/units/Hitbox;
    .param p5, "FRAME_TIME"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->iNumOfFrames:I

    .line 16
    const/16 v0, 0x30

    iput v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->ANIMATION_FRAME_TIME:I

    .line 23
    invoke-static {p1, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    .line 24
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getHeight()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->iNumOfFrames:I

    .line 26
    iput-object p4, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    .line 28
    iput p5, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->ANIMATION_FRAME_TIME:I

    .line 29
    return-void
.end method


# virtual methods
.method public final drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nDirection"    # I
    .param p5, "currentFrameID"    # I

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result v1

    mul-int v1, v1, p4

    iget-object v2, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v2

    mul-int v2, v2, p5

    iget-object v3, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 37
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageRegion;->drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 38
    return-void
.end method

.method public final drawFrameHitboxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 42
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/units/Hitbox;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/units/Hitbox;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/units/Hitbox;->getWidth()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/units/Hitbox;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 43
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 44
    return-void
.end method

.method protected getNumOfFrames()I
    .registers 2

    .line 49
    iget v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->iNumOfFrames:I

    return v0
.end method
