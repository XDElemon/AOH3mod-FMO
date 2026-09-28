.class public Laoc/kingdoms/lukasz/map/map/City;
.super Ljava/lang/Object;
.source "City.java"


# static fields
.field public static final PADDING:I = 0xa

.field public static final PADDING_NAME:I = 0x5


# instance fields
.field public iCityLevel:I

.field public iHeight:I

.field public iPosX:I

.field public iPosY:I

.field public iWidth:I

.field public imageID:I

.field public sCityName:Ljava/lang/String;

.field public sCityNameOriginal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 7
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "iCityLevel"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    .line 31
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    .line 36
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    .line 41
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosX:I

    .line 42
    iput p3, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    .line 44
    iput p4, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    .line 46
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    .line 47
    return-void
.end method

.method private final drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nX"    # I
    .param p3, "nY"    # I
    .param p4, "fAlpha"    # F
    .param p5, "fontScale"    # F

    .line 217
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 219
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p4

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v2, 0x4

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 222
    return-void
.end method

.method private final drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F
    .param p5, "tScale"    # F

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual {v0, v10, v11}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    .line 229
    .local v1, "nPosX":I
    invoke-virtual {v0, v10, v11}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v13

    .line 231
    .local v13, "nPosY":I
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f666666    # 0.9f

    mul-float v3, v3, v12

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v15

    .line 235
    .local v15, "tWidth":I
    div-int/lit8 v2, v15, 0x2

    sub-int v8, v1, v2

    .line 237
    .end local v1    # "nPosX":I
    .local v8, "nPosX":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 239
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 240
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 242
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 243
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ne v1, v10, :cond_64

    .line 244
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 246
    :cond_64
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 247
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 249
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeftOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 251
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v12

    invoke-direct {v1, v14, v14, v14, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 253
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v3, v8, v2

    iget v2, v0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v5, v2, 0xa

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move v4, v13

    move/from16 v17, v8

    .end local v8    # "nPosX":I
    .local v17, "nPosX":I
    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 255
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v14, v14, v14, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 260
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_CAPITAL_FONT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    .line 263
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int v8, v17, v1

    add-int/lit8 v4, v8, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    .line 264
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v5, v13, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v8, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v8, v8, v12

    invoke-direct {v6, v1, v2, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 262
    const/4 v2, 0x4

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 267
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 268
    return-void
.end method

.method private final drawCityName_Capital_Civ(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F

    .line 271
    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v0

    .line 272
    .local v0, "nPosX":I
    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v9

    .line 274
    .local v9, "nPosY":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f666666    # 0.9f

    mul-float v2, v2, p4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 276
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 278
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 280
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 281
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 283
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 284
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ne v1, p2, :cond_59

    .line 285
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 287
    :cond_59
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 288
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 290
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeftOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 292
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, p4

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 294
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v3, v0, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v5, v2, 0xa

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v4, v9

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 296
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 298
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_CAPITAL_FONT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 300
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    add-int/lit8 v5, v0, 0x5

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v6, v9

    invoke-interface/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFII)V

    .line 306
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 307
    return-void
.end method


# virtual methods
.method public final drawCity(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F
    .param p5, "fAlpha2"    # F
    .param p6, "fontScale"    # F

    .line 52
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 54
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    .line 57
    .local v1, "tScale":F
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_77

    .line 58
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    .line 61
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 62
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p3

    float-to-int v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    .line 60
    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_d5

    .line 66
    :cond_77
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 68
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    .line 69
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 70
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p3

    float-to-int v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    .line 68
    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 73
    :goto_d5
    return-void
.end method

.method public final drawCityName_Capital_CivFlag_War(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F

    .line 310
    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v0

    .line 311
    .local v0, "nPosX":I
    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v1

    .line 313
    .local v1, "nPosY":I
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, p4, v3

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 315
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_57

    .line 316
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_l:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_cb

    .line 318
    :cond_57
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_9a

    .line 319
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_cb

    .line 322
    :cond_9a
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_s:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 324
    :goto_cb
    return-void
.end method

.method public final drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F

    .line 80
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Map;->drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v5

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;->drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFII)V

    .line 81
    return-void
.end method

.method public final drawCity_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital_Civ(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    .line 77
    return-void
.end method

.method public final drawCity_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F
    .param p5, "fAlpha2"    # F
    .param p6, "fontScale"    # F

    .line 84
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 86
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    .line 89
    .local v1, "tScale":F
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_60

    .line 90
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 92
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    .line 94
    .local v2, "image":Laoc/kingdoms/lukasz/textures/Image;
    nop

    .line 95
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p3

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 96
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p3

    float-to-int v5, v5

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    .line 94
    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 102
    .end local v2    # "image":Laoc/kingdoms/lukasz/textures/Image;
    goto :goto_a7

    .line 104
    :cond_60
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 106
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    .line 108
    .restart local v2    # "image":Laoc/kingdoms/lukasz/textures/Image;
    nop

    .line 109
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p3

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 110
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p3

    float-to-int v5, v5

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    .line 108
    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 113
    .end local v2    # "image":Laoc/kingdoms/lukasz/textures/Image;
    :goto_a7
    return-void
.end method

.method public final drawCity_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F
    .param p5, "fAlpha2"    # F
    .param p6, "fontScale"    # F

    .line 116
    move-object v6, p0

    move-object v7, p1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    .line 118
    .local v8, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v1, v6, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v9, v0, v1

    .line 120
    .local v9, "tScale":F
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_67

    .line 121
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v10, p4

    invoke-direct {v0, v2, v2, v2, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 123
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v2, v6, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    .line 125
    .local v0, "image":Laoc/kingdoms/lukasz/textures/Image;
    nop

    .line 126
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v9

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 127
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p3

    float-to-int v3, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v9

    div-float/2addr v4, v1

    float-to-int v1, v4

    sub-int/2addr v3, v1

    .line 125
    invoke-virtual {v0, p1, v2, v3, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 129
    .end local v0    # "image":Laoc/kingdoms/lukasz/textures/Image;
    move/from16 v11, p5

    goto/16 :goto_f5

    .line 131
    :cond_67
    move/from16 v10, p4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v11, p5

    invoke-direct {v0, v2, v2, v2, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v2, v6, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Laoc/kingdoms/lukasz/textures/Image;

    .line 135
    .local v12, "image":Laoc/kingdoms/lukasz/textures/Image;
    nop

    .line 136
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, p3

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v9

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 137
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v9

    div-float/2addr v3, v1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 135
    invoke-virtual {v12, p1, v0, v2, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 140
    nop

    .line 141
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, p3

    iget v2, v6, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v2, v2

    mul-float v2, v2, p6

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v2, v0

    .line 142
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v0, v0

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v9

    div-float/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v3, v1

    float-to-int v1, v3

    add-int v3, v0, v1

    .line 140
    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p4

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 144
    .end local v12    # "image":Laoc/kingdoms/lukasz/textures/Image;
    :goto_f5
    return-void
.end method

.method public final drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F
    .param p5, "fAlpha2"    # F
    .param p6, "fontScale"    # F

    .line 147
    nop

    .line 148
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p6

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v3, v0

    .line 149
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v4, v0

    .line 147
    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 151
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v0, v0, v1

    .line 152
    .local v0, "tScale":F
    return-void
.end method

.method public final drawCity_Name(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F
    .param p5, "fontScale"    # F

    .line 181
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 183
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v1, v1, v2

    .line 185
    .local v1, "tScale":F
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 187
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_7c

    .line 188
    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v2, :cond_2f

    .line 189
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, v1

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    goto/16 :goto_d6

    .line 192
    :cond_2f
    nop

    .line 193
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    .line 194
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    .line 192
    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_d6

    .line 198
    :cond_7c
    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v2, :cond_8a

    .line 199
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, v1

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    goto :goto_d6

    .line 202
    :cond_8a
    nop

    .line 203
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    .line 204
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    .line 202
    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 207
    :goto_d6
    return-void
.end method

.method public final drawCity_NameNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nScale"    # F
    .param p4, "fAlpha"    # F
    .param p5, "fontScale"    # F

    .line 157
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 159
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v1, v1, v2

    .line 161
    .local v1, "tScale":F
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 163
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_71

    .line 164
    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v2, :cond_c1

    .line 165
    nop

    .line 166
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    .line 167
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    .line 165
    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_c1

    .line 171
    :cond_71
    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v2, :cond_c1

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    .line 174
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    .line 172
    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 177
    :cond_c1
    :goto_c1
    return-void
.end method

.method public final getDrawPosX(IF)I
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "nScale"    # F

    .line 327
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    return v0
.end method

.method public final getDrawPosY(IF)I
    .registers 7
    .param p1, "nProvinceID"    # I
    .param p2, "nScale"    # F

    .line 331
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v2, v2, v3

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getDrawWidth()I
    .registers 3

    .line 335
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final getPosX()I
    .registers 2

    .line 377
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .registers 2

    .line 381
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    return v0
.end method

.method public final setCityName(ILjava/lang/String;)V
    .registers 6
    .param p1, "nProvinceID"    # I
    .param p2, "sName"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 359
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    .line 360
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    .line 363
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    .line 365
    new-instance v0, Laoc/kingdoms/lukasz/map/map/City$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebuildProvNameData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/map/map/City$2;-><init>(Laoc/kingdoms/lukasz/map/map/City;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 372
    :cond_31
    return-void
.end method

.method public final setCityNameOriginal(I)V
    .registers 5
    .param p1, "nProvinceID"    # I

    .line 341
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 342
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    .line 346
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    .line 348
    new-instance v0, Laoc/kingdoms/lukasz/map/map/City$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildProvNameData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/map/map/City$1;-><init>(Laoc/kingdoms/lukasz/map/map/City;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 355
    :cond_35
    return-void
.end method

.method protected final updateCityNameWidth()V
    .registers 4

    .line 385
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 387
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 388
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    .line 389
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    .line 390
    return-void
.end method
