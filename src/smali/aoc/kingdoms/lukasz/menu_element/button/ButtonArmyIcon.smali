.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonArmyIcon.java"


# static fields
.field public static maxWidth:I


# instance fields
.field public armyKey:Ljava/lang/String;

.field public checkbox:Z

.field public imageID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->maxWidth:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 17
    .param p1, "imageID"    # I
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I

    .line 21
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 22
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 23
    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    .line 25
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 18
    .param p1, "imageID"    # I
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "checkbox"    # Z

    .line 28
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 29
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 30
    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    .line 31
    move/from16 v1, p4

    iput-boolean v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 33
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;)V
    .registers 19
    .param p1, "imageID"    # I
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "checkbox"    # Z
    .param p5, "armyKey"    # Ljava/lang/String;

    .line 36
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 37
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 38
    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    .line 39
    move/from16 v1, p4

    iput-boolean v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 40
    move-object/from16 v2, p5

    iput-object v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->armyKey:Ljava/lang/String;

    .line 42
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;I)V
    .registers 20
    .param p1, "imageID"    # I
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "checkbox"    # Z
    .param p5, "armyKey"    # Ljava/lang/String;
    .param p6, "buttonH"    # I

    .line 45
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 46
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 47
    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    .line 48
    move/from16 v1, p4

    iput-boolean v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 49
    move-object/from16 v2, p5

    iput-object v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->armyKey:Ljava/lang/String;

    .line 51
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    .line 52
    return-void
.end method

.method public static getButtonHeight()I
    .registers 2

    .line 71
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getButtonWidth()I
    .registers 2

    .line 75
    sget v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->maxWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyID;->getBoxAlpha(ZZZ)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 57
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 58
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 59
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 63
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getImageID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getImageID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getImageID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 64
    return-void
.end method

.method public getCheckboxState()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    return v0
.end method

.method public getImageID()I
    .registers 2

    .line 67
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    return v0
.end method

.method public setCheckboxState(Z)V
    .registers 2
    .param p1, "checkboxState"    # Z

    .line 85
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    .line 86
    return-void
.end method
