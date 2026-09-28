.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
.super Ljava/lang/Object;
.source "MenuTitle.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x145

.field public static colorActive:Lcom/badlogic/gdx/graphics/Color;

.field public static colorDefault:Lcom/badlogic/gdx/graphics/Color;

.field public static colorHovered:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public fontID:I

.field public fontScale:F

.field private iHeight:I

.field private iTextHeight:I

.field public iTextWidth:I

.field private moveable:Z

.field private resizable:Z

.field private sText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6dedee

    const v2, 0x3f7efeff

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f48c8c9

    const v2, 0x3f43c3c4

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    .line 91
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f169697

    const v2, 0x3f1b9b9c

    const v4, 0x3f0c8c8d

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorActive:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FIZZ)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontScale"    # F
    .param p3, "iHeight"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    .line 19
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    .line 24
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    .line 42
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->initTitle(Ljava/lang/String;FIZZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .registers 13
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iHeight"    # I
    .param p3, "fontID"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    .line 19
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    .line 24
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    .line 37
    iput p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->initTitle(Ljava/lang/String;FIZZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 12
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iHeight"    # I
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    .line 19
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    .line 24
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    .line 33
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->initTitle(Ljava/lang/String;FIZZ)V

    .line 34
    return-void
.end method

.method private final initTitle(Ljava/lang/String;FIZZ)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontScale"    # F
    .param p3, "iHeight"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z

    .line 46
    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    .line 47
    iput p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iHeight:I

    .line 48
    iput-boolean p4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    .line 49
    iput-boolean p5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    .line 51
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public action()V
    .registers 1

    .line 158
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 57
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitle:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v0

    sub-int v3, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    .line 59
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 61
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f129293

    const v4, 0x3efcfcfd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 62
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p3, -0x1

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 63
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 66
    return-void
.end method

.method public drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e666666    # 0.225f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 72
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x145

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_84

    .line 73
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x43a28000    # 325.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v0, v0, v1

    sub-float v8, v1, v0

    .line 75
    .local v8, "tAlpha":F
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 76
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 77
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 80
    .end local v8    # "tAlpha":F
    :cond_84
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p3, -0x2

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 82
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 83
    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 86
    iget v1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    int-to-float v0, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    float-to-int v0, v0

    add-int v5, p2, v0

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTextHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    float-to-int v4, v6

    add-int v6, v0, v4

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v0, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V

    .line 87
    return-void
.end method

.method public getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;
    .registers 4
    .param p1, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 94
    sget-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle$1;->$SwitchMap$aoc$kingdoms$lukasz$menu_element$Status:[I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 98
    :pswitch_e
    sget-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 96
    :pswitch_11
    sget-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorActive:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public final getHeight()I
    .registers 2

    .line 127
    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iHeight:I

    return v0
.end method

.method public final getMoveable()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    return v0
.end method

.method public final getResizable()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextHeight()I
    .registers 2

    .line 139
    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    return v0
.end method

.method public final getTextWidth()I
    .registers 2

    .line 135
    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    return v0
.end method

.method public getTime()J
    .registers 3

    .line 155
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onHovered()V
    .registers 1

    .line 160
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->sText:Ljava/lang/String;

    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setTextWidth(I)V

    .line 116
    if-eqz p1, :cond_34

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTextWidth()I

    move-result v0

    if-gez v0, :cond_34

    .line 117
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 119
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 121
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    iget v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setTextWidth(I)V

    .line 122
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    iget v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setTextHeight(I)V

    .line 124
    .end local v0    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :cond_34
    return-void
.end method

.method public final setTextHeight(I)V
    .registers 2
    .param p1, "iTextHeight"    # I

    .line 147
    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    .line 148
    return-void
.end method

.method public final setTextWidth(I)V
    .registers 2
    .param p1, "iTextWidth"    # I

    .line 143
    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    .line 144
    return-void
.end method
