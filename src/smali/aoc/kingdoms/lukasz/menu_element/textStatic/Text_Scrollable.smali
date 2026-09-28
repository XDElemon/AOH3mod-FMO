.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Text_Scrollable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;,
        Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;
    }
.end annotation


# instance fields
.field private center:Z

.field private drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

.field private fTextScale:F

.field private iScrollPosX:I

.field protected iTextHeight:I

.field protected iTextWidth:I

.field private lTime:J

.field protected sText:Ljava/lang/String;

.field private scrollInRightDirection:Z

.field private scrollable:Z

.field private textColor:Lcom/badlogic/gdx/graphics/Color;

.field protected textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 17
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "textColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 51
    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    .line 16
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    .line 32
    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    .line 33
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 52
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;F)V
    .registers 18
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "textColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "nTextScale"    # F

    .line 59
    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    .line 16
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    .line 32
    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    .line 33
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 60
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "textColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "nTextScale"    # F
    .param p8, "iTextPosition"    # I

    .line 63
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    .line 32
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 64
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;)V
    .registers 16
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "textColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 47
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    .line 32
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 48
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;F)V
    .registers 17
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "textColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "nTextScale"    # F

    .line 55
    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    .line 16
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    .line 32
    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    .line 33
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 56
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)F
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    return v0
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fontID:I

    return v0
.end method

.method static synthetic access$200(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fontID:I

    return v0
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$304(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$306(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)J
    .registers 3
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J

    return-wide v0
.end method

.method static synthetic access$402(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;J)J
    .registers 3
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;
    .param p1, "x1"    # J

    .line 12
    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J

    return-wide p1
.end method

.method static synthetic access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 12
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    return v0
.end method

.method static synthetic access$502(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;Z)Z
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;
    .param p1, "x1"    # Z

    .line 12
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    return p1
.end method

.method private final init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .registers 11
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "textColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "nTextScale"    # F
    .param p8, "iTextPosition"    # I

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT_SCROLLABLE:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 70
    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 71
    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    .line 73
    if-gez p8, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    .line 75
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setPosX(I)V

    .line 76
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setPosY(I)V

    .line 78
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setWidth(I)V

    .line 80
    if-lez p5, :cond_1d

    .line 81
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setHeight(I)V

    .line 84
    :cond_1d
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setText(Ljava/lang/String;)V

    .line 86
    iput-object p6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    .line 88
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->updateTextPosition()V

    .line 90
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_35

    .line 91
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

    goto :goto_3c

    .line 101
    :cond_35
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$2;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

    .line 108
    :goto_3c
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 114
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getHeight()I

    move-result v3

    neg-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    move-result v0

    if-nez v0, :cond_22

    .line 115
    return-void

    .line 117
    :cond_22
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 118
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 119
    return-void
.end method

.method protected draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 129
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    .line 132
    goto :goto_f

    .line 130
    :catch_b
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 133
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_f
    return-void
.end method

.method protected draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 136
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 137
    return-void
.end method

.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 5
    .param p1, "isActive"    # Z

    .line 142
    if-eqz p1, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    .line 143
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    :cond_17
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3f47ae14    # 0.78f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 142
    :goto_22
    return-object v0
.end method

.method public getScrollPosX()I
    .registers 2

    .line 258
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method public getScrollable()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 253
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    return v0
.end method

.method public getTextWidth()I
    .registers 2

    .line 248
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    return v0
.end method

.method public scrollByWheel(I)V
    .registers 6
    .param p1, "nScoll"    # I

    .line 268
    if-gez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 269
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getScrollPosX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setScrollPosX(I)V

    .line 270
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x177

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J

    .line 271
    return-void
.end method

.method public setScrollPosX(I)V
    .registers 4
    .param p1, "scrollPosX"    # I

    .line 234
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 236
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    if-le v0, v1, :cond_10

    .line 237
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    goto :goto_33

    .line 240
    :cond_10
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    neg-int v1, v1

    if-ge v0, v1, :cond_33

    .line 241
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 244
    :cond_33
    :goto_33
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    .line 156
    :try_start_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    .line 157
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    .line 162
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    .line 164
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->updateTextPosition()V

    .line 166
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getHeight()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    if-ge v0, v1, :cond_37

    .line 167
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setHeight(I)V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_37} :catch_38

    .line 171
    :cond_37
    goto :goto_39

    .line 169
    :catch_38
    move-exception v0

    .line 172
    :goto_39
    return-void
.end method

.method protected final updateTextPosition()V
    .registers 5

    .line 175
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_19

    .line 176
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    .line 205
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    goto :goto_2e

    .line 208
    :cond_19
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    if-eqz v0, :cond_25

    .line 209
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    goto :goto_2c

    .line 217
    :cond_25
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$5;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    .line 225
    :goto_2c
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    .line 228
    :goto_2e
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    .line 229
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    .line 230
    return-void
.end method
