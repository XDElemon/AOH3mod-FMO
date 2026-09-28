.class public Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Info.java"


# static fields
.field public static TIME_IN_VIEW:I

.field public static fAnimationPerc:F

.field public static hideAnimation:Z

.field public static iAnimationWidth:I

.field public static iCivID:I

.field public static iCivID2:I

.field public static iInfoY:I

.field public static imgID:I


# instance fields
.field public final ANIMATION_TIME:I

.field public lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 27
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 29
    const/16 v1, 0xdac

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->TIME_IN_VIEW:I

    .line 36
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->hideAnimation:Z

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    .line 39
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 31
    const/16 v0, 0xe1

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->ANIMATION_TIME:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 46
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;->getButtonHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iInfoY:I

    .line 48
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info$1;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iInfoY:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoTop:I

    .line 49
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    .line 50
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    .line 51
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v8, v0, 0x5

    const/4 v4, -0x1

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;Ljava/lang/String;IIIIII)V

    .line 48
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info$2;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iInfoY:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoTop:I

    .line 59
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    .line 60
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    .line 61
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;Ljava/lang/String;IIIIII)V

    .line 58
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoLegacy:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 82
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->INFO_BOX:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 89
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->hideAnimation:Z

    const/high16 v1, 0x43610000    # 225.0f

    const-wide/16 v2, 0xe1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_40

    .line 90
    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    add-long/2addr v5, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const/4 v0, 0x0

    cmp-long v7, v5, v2

    if-ltz v7, :cond_27

    .line 91
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    sub-long/2addr v2, v5

    long-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v4, v2

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    .line 92
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    goto :goto_2d

    .line 94
    :cond_27
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->setVisible(Z)V

    .line 98
    :goto_2d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    goto :goto_82

    .line 101
    :cond_40
    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    add-long/2addr v5, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v5, v2

    if-ltz v0, :cond_5b

    .line 102
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    sub-long/2addr v2, v5

    long-to-float v0, v2

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    .line 103
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    goto :goto_5d

    .line 105
    :cond_5b
    sput v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    .line 108
    :goto_5d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    .line 110
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->TIME_IN_VIEW:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_82

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->hideAnimation:Z

    .line 112
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    .line 117
    :cond_82
    :goto_82
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxWidthTotalAnimation()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iInfoY:I

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->drawInfoBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 119
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 120
    return-void
.end method

.method public drawInfoBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iX"    # I
    .param p3, "iY"    # I

    .line 124
    move-object v8, p1

    move v9, p2

    move/from16 v10, p3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666    # 0.65f

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v2, v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 125
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int v3, v10, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxWidthTotalAnimation()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxHeightTotal()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v10, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxWidthTotalAnimation()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxHeightTotal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 127
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 130
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->hideAnimation:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_68

    .line 131
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v1, v1, v6

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 134
    :cond_68
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxWidthTotalAnimation()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    .line 135
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v10

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v7, v7, v4

    add-float/2addr v7, v4

    mul-float v5, v5, v7

    div-float/2addr v5, v3

    float-to-int v3, v5

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 136
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v5, v5, v4

    add-float/2addr v5, v4

    mul-float v1, v1, v5

    float-to-int v5, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 137
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v7, v7, v4

    add-float/2addr v7, v4

    mul-float v1, v1, v7

    float-to-int v7, v1

    .line 134
    move-object v1, p1

    move v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 139
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 140
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoTop:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int v2, v9, v1

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 141
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int v2, v9, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v3, v10, v1

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 142
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBot:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int v2, v9, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/2addr v1, v10

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoBot:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 143
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, v9

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 145
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 147
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    const/high16 v7, 0x3f400000    # 0.75f

    const v11, 0x84c0

    const/4 v12, 0x1

    if-eqz v0, :cond_1f3

    .line 148
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 150
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    if-gez v0, :cond_1a8

    .line 151
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    goto :goto_1b9

    .line 153
    :cond_1a8
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 156
    :goto_1b9
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v11}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 158
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v1, v1, v7

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 160
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoMaskLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoMaskLeft:I

    .line 163
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoMaskLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 160
    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 165
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 166
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 168
    :cond_1f3
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 170
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    if-eqz v0, :cond_26e

    .line 171
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 173
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    if-gez v0, :cond_213

    .line 174
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    goto :goto_224

    .line 176
    :cond_213
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 179
    :goto_224
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v11}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 181
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v1, v1, v7

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 183
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoMaskRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->getInfoBoxWidthTotalAnimation()I

    move-result v1

    add-int/2addr v1, v9

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->infoMaskRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoMaskRight:I

    .line 186
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoMaskRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 183
    move-object v1, p1

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 188
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 189
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 192
    :cond_26e
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 193
    return-void
.end method

.method public getInfoBoxHeightTotal()I
    .registers 2

    .line 204
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInfoBoxWidth()I
    .registers 2

    .line 196
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public getInfoBoxWidthTotal()I
    .registers 3

    .line 200
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoBox:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getInfoBoxWidthTotalAnimation()I
    .registers 3

    .line 208
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iAnimationWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 213
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 215
    if-eqz p1, :cond_c

    .line 216
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->lTime:J

    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->hideAnimation:Z

    .line 219
    :cond_c
    return-void
.end method
