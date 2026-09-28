.class public Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Info_2.java"


# static fields
.field public static TIME_IN_VIEW:I

.field public static fAnimationPerc:F

.field public static hideAnimation:Z

.field public static iAnimationWidth:I

.field public static iCivID:I

.field public static iCivID2:I

.field public static iInfoY:I


# instance fields
.field public final ANIMATION_TIME:I

.field public lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iCivID:I

    .line 24
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iCivID2:I

    .line 26
    const/16 v1, 0xdac

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->TIME_IN_VIEW:I

    .line 33
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->hideAnimation:Z

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    .line 36
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iAnimationWidth:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 28
    const/16 v0, 0xe1

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->ANIMATION_TIME:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 41
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;->getButtonHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iInfoY:I

    .line 43
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2$1;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iInfoY:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    .line 45
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    .line 46
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

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;Ljava/lang/String;IIIIII)V

    .line 43
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2$2;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iInfoY:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    .line 65
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    .line 66
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    .line 67
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;Ljava/lang/String;IIIIII)V

    .line 64
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoLegacy:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 88
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 90
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->INFO_BOX:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 91
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

    .line 95
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->hideAnimation:Z

    const/high16 v1, 0x43610000    # 225.0f

    const-wide/16 v2, 0xe1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_40

    .line 96
    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    add-long/2addr v5, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const/4 v0, 0x0

    cmp-long v7, v5, v2

    if-ltz v7, :cond_27

    .line 97
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    sub-long/2addr v2, v5

    long-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v4, v2

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    .line 98
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    goto :goto_2d

    .line 100
    :cond_27
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->setVisible(Z)V

    .line 104
    :goto_2d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iAnimationWidth:I

    goto :goto_82

    .line 107
    :cond_40
    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    add-long/2addr v5, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v5, v2

    if-ltz v0, :cond_5b

    .line 108
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    sub-long/2addr v2, v5

    long-to-float v0, v2

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    .line 109
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    goto :goto_5d

    .line 111
    :cond_5b
    sput v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    .line 114
    :goto_5d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iAnimationWidth:I

    .line 116
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->TIME_IN_VIEW:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_82

    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->hideAnimation:Z

    .line 118
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    .line 123
    :cond_82
    :goto_82
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxWidthTotalAnimation()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iInfoY:I

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->drawInfoBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 125
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 126
    return-void
.end method

.method public drawInfoBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iX"    # I
    .param p3, "iY"    # I

    .line 130
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666    # 0.65f

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    mul-float v2, v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 131
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int v3, p3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxWidthTotalAnimation()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxHeightTotal()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 132
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, p3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxWidthTotalAnimation()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxHeightTotal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 133
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 136
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->hideAnimation:Z

    if-eqz v0, :cond_64

    .line 137
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 140
    :cond_64
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxWidthTotalAnimation()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    .line 141
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->getInfoBoxHeightTotal()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    mul-float v6, v6, v4

    add-float/2addr v6, v4

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    float-to-int v3, v5

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 142
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    mul-float v5, v5, v4

    add-float/2addr v5, v4

    mul-float v1, v1, v5

    float-to-int v5, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 143
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->fAnimationPerc:F

    mul-float v6, v6, v4

    add-float/2addr v6, v4

    mul-float v1, v1, v6

    float-to-int v6, v1

    .line 140
    move-object v1, p1

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 146
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iAnimationWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 148
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 189
    return-void
.end method

.method public getInfoBoxHeightTotal()I
    .registers 2

    .line 196
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInfoBoxWidth()I
    .registers 2

    .line 192
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoBox2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public getInfoBoxWidthTotalAnimation()I
    .registers 2

    .line 200
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->iAnimationWidth:I

    return v0
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 205
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 207
    if-eqz p1, :cond_c

    .line 208
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->lTime:J

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info_2;->hideAnimation:Z

    .line 211
    :cond_c
    return-void
.end method
