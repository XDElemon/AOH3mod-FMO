.class public Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_Advantage3.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public advantageID:I

.field public iLevel:I

.field public iconHeight:I

.field public iconWidth:I

.field public imageID:I

.field public sTextHover:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    .line 32
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->animationState:I

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;I)V
    .registers 26
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "advantageID"    # I
    .param p4, "iLevel"    # I
    .param p5, "sTextHover"    # Ljava/lang/String;
    .param p6, "sText"    # Ljava/lang/String;
    .param p7, "imageID"    # I

    .line 40
    move-object/from16 v12, p0

    move/from16 v13, p7

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 41
    move/from16 v14, p3

    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->advantageID:I

    .line 42
    move/from16 v15, p4

    iput v15, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->iLevel:I

    .line 44
    move-object/from16 v11, p5

    iput-object v11, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->sTextHover:Ljava/lang/String;

    .line 46
    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->imageID:I

    .line 47
    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getImageScale(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v16, v0, v1

    .line 48
    .local v16, "iconScale":F
    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->iconWidth:I

    .line 49
    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->iconHeight:I

    .line 51
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getButtonHeight()I

    move-result v7

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v11, v17

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 52
    return-void
.end method

.method public static getButtonHeight()I
    .registers 1

    .line 127
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getButtonWidth()I
    .registers 1

    .line 123
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .registers 12

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->sTextHover:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->imageID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 149
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 153
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "CivilizationAdvantage"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 159
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 56
    move-object v1, p0

    move-object v10, p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 59
    const/4 v11, 0x1

    :try_start_8
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->advantageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->iLevel:I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 60
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 62
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_59} :catch_5a

    .line 65
    goto :goto_5e

    .line 63
    :catch_5a
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5e
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 70
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 83
    sget v0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->animationState:I

    if-ltz v0, :cond_1b3

    .line 84
    sget v0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->animationState:I

    const-wide/16 v12, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_fd

    .line 85
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v6, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    mul-float v0, v0, v3

    div-float/2addr v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 87
    .local v0, "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosY()I

    move-result v3

    add-int/2addr v3, v11

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v6, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 89
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosY()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v6, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 91
    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v4, v12

    cmp-long v6, v2, v4

    if-gez v6, :cond_fb

    .line 92
    sget v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->animationState:I

    add-int/2addr v2, v11

    sput v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->animationState:I

    .line 93
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    .line 95
    .end local v0    # "drawPerc":F
    :cond_fb
    goto/16 :goto_1ae

    .line 97
    :cond_fd
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v6, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    mul-float v0, v0, v3

    div-float/2addr v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 99
    .restart local v0    # "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosY()I

    move-result v3

    add-int/2addr v3, v11

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    sub-int v6, v3, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 101
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosY()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    sub-int v6, v3, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 103
    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v4, v12

    cmp-long v6, v2, v4

    if-gez v6, :cond_1ae

    .line 104
    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->animationState:I

    .line 105
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    .line 109
    .end local v0    # "drawPerc":F
    :cond_1ae
    :goto_1ae
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 116
    :cond_1b3
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantagesSmallOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 117
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 120
    return-void
.end method

.method public getBonusH()I
    .registers 3

    .line 131
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 189
    if-eqz p1, :cond_5

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 192
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 193
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 196
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 200
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public final getImageScale(I)F
    .registers 4
    .param p1, "iImageID"    # I

    .line 185
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->sTextHover:Ljava/lang/String;

    return-object v0
.end method

.method public getValue1()I
    .registers 2

    .line 176
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->advantageID:I

    return v0
.end method

.method public getValue2()I
    .registers 2

    .line 181
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->iLevel:I

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"    # Z

    .line 163
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    .line 165
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->lTimeAnimation:J

    .line 166
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->animationState:I

    .line 167
    return-void
.end method
