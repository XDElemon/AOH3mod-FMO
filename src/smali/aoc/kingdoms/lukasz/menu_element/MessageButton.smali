.class public Laoc/kingdoms/lukasz/menu_element/MessageButton;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "MessageButton.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x15e

.field public static messageMaskY:I


# instance fields
.field public expiresTurnID:I

.field private iCivID:I

.field public imageID:I

.field public imgH:I

.field public imgW:I

.field public key:Ljava/lang/String;

.field public lTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIJIIZ)V
    .registers 29
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iCivID"    # I
    .param p3, "imageID"    # I
    .param p4, "expiresTurnID"    # I
    .param p5, "time"    # J
    .param p7, "iPosX"    # I
    .param p8, "iPosY"    # I
    .param p9, "isClickable"    # Z

    .line 35
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    .line 36
    move/from16 v13, p2

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iCivID:I

    .line 37
    move-object/from16 v14, p1

    iput-object v14, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    .line 38
    move/from16 v15, p3

    iput v15, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imageID:I

    .line 39
    move/from16 v11, p4

    iput v11, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->expiresTurnID:I

    .line 41
    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    .line 42
    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgH:I

    .line 44
    move-wide/from16 v9, p5

    iput-wide v9, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    .line 46
    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getExtraWidth()I

    move-result v1

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v1, ""

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v8, p9

    move/from16 v9, v18

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 48
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 49
    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 119
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    move-result-object v0

    .line 121
    .local v0, "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    if-eqz v0, :cond_e

    .line 122
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->actionClick()V

    goto :goto_18

    .line 125
    :cond_e
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/MessageButton$1;

    const-string v2, "rebuildInGame_MessagesSavePos"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menu_element/MessageButton$1;-><init>(Laoc/kingdoms/lukasz/menu_element/MessageButton;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 132
    :goto_18
    return-void
.end method

.method public actionElementPPM()V
    .registers 4

    .line 136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    move-result-object v0

    .line 138
    .local v0, "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    if-eqz v0, :cond_e

    .line 139
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->actionClick()V

    goto :goto_18

    .line 142
    :cond_e
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/MessageButton$2;

    const-string v2, "rebuildInGame_MessagesSavePos"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menu_element/MessageButton$2;-><init>(Laoc/kingdoms/lukasz/menu_element/MessageButton;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 149
    :goto_18
    return-void
.end method

.method public buildElementHover()V
    .registers 3

    .line 114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage_Hover(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 115
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 58
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    const-wide/16 v2, 0x15e

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    .line 59
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v6, v0

    .end local p3    # "iTranslateY":I
    .local v0, "iTranslateY":I
    goto :goto_26

    .line 58
    .end local v0    # "iTranslateY":I
    .restart local p3    # "iTranslateY":I
    :cond_25
    move v6, p3

    .line 62
    .end local p3    # "iTranslateY":I
    .local v6, "iTranslateY":I
    :goto_26
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v1

    add-int v3, v1, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v3, v1, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 67
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 68
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v3, v1, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 71
    :cond_115
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 72
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getExtraWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, v6

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgH:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 74
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 76
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 79
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 81
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 82
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/MessageButton;->messageMaskY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    .line 84
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->messageMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, v6

    .line 81
    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 86
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 87
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 89
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 90
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 92
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_214

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 96
    :cond_214
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    return-void
.end method

.method public getExtraWidth()I
    .registers 3

    .line 100
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 3
    .param p1, "isHovered"    # Z

    .line 105
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    .line 107
    if-eqz p1, :cond_9

    .line 108
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 110
    :cond_9
    return-void
.end method
