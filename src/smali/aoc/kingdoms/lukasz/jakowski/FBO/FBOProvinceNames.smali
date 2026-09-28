.class public Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;
.super Ljava/lang/Object;
.source "FBOProvinceNames.java"


# static fields
.field public static fboNumToGenerate_Names:I

.field public static fboPosX:I

.field public static fboPosY:I

.field public static fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field public static lastPosX:I

.field public static lastPosY:I

.field public static textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 15
    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    .line 17
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    .line 19
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    .line 20
    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    .line 22
    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosX:I

    .line 23
    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disposeProvinceNamesFBO()V
    .registers 1

    .line 32
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_c

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    .line 34
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 36
    :cond_c
    return-void
.end method

.method public static final disposeProvinceNamesTexture()V
    .registers 1

    .line 39
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_c

    .line 40
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    .line 43
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

    .line 68
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

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

    .line 77
    return-void
.end method

.method public static final drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 18
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 62
    move-object/from16 v15, p0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v14, 0x0

    const/16 v16, 0x1

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

    move/from16 v15, v16

    invoke-static/range {v0 .. v15}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    return-void
.end method

.method public static final redrawnProvinceNames()V
    .registers 1

    .line 28
    const v0, -0x8c4c17

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    .line 29
    return-void
.end method

.method public static final updateFBO()V
    .registers 2

    .line 48
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    if-ne v0, v1, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 49
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    goto :goto_2e

    .line 52
    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    .line 53
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    .line 55
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    .line 57
    :goto_2e
    return-void
.end method
