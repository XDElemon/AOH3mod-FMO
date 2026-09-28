.class public Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;
.super Ljava/lang/Object;
.source "FBOProvincesBG.java"


# static fields
.field public static fboNumToGenerate_PB:I

.field public static fboPosX:I

.field public static fboPosY:I

.field public static fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field public static lastPosX:I

.field public static lastPosY:I

.field public static textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 14
    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    .line 16
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    .line 18
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosX:I

    .line 19
    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosY:I

    .line 21
    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboPosX:I

    .line 22
    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboPosY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disposeProvincesFBO()V
    .registers 1

    .line 31
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_c

    .line 32
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    .line 33
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 35
    :cond_c
    return-void
.end method

.method public static final disposeProvincesTexture()V
    .registers 1

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_c

    .line 39
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 40
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    .line 42
    :cond_c
    return-void
.end method

.method public static final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .registers 34
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "originX"    # I
    .param p4, "originY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F
    .param p9, "rotation"    # F
    .param p10, "srcX"    # I
    .param p11, "srcY"    # I
    .param p12, "srcWidth"    # I
    .param p13, "srcHeight"    # I
    .param p14, "flipX"    # Z
    .param p15, "flipY"    # Z

    move-object/from16 v0, p0

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    .line 67
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v7, p1

    int-to-float v2, v7

    move/from16 v6, p2

    neg-int v3, v6

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v5, p3

    int-to-float v4, v5

    move-object/from16 v17, v0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 76
    return-void
.end method

.method public static final drawPBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 20
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F

    .line 61
    move-object/from16 v15, p0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v14, p1

    invoke-direct {v0, v1, v1, v1, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 62
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-static/range {v0 .. v15}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 63
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 64
    return-void
.end method

.method public static final redrawnProvinces()V
    .registers 1

    .line 27
    const v0, -0x8c4c17

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosX:I

    .line 28
    return-void
.end method

.method public static final updateFBO()V
    .registers 2

    .line 47
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    if-ne v0, v1, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 48
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    goto :goto_2e

    .line 51
    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosX:I

    .line 52
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosY:I

    .line 54
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    .line 56
    :goto_2e
    return-void
.end method
