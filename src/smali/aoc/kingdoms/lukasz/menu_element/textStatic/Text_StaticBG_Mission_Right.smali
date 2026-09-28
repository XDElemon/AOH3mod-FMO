.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;
.source "Text_StaticBG_Mission_Right.java"


# static fields
.field public static final ANIMATION_T:I = 0x7d0

.field public static animationState:I

.field public static lTimeAnimation:J


# instance fields
.field public iLastTurnID:I

.field public iRespondTurnID:I

.field public iText2Width:I

.field public sText2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    .line 28
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->animationState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIII)V
    .registers 20
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "eventType"    # I
    .param p8, "id"    # I
    .param p9, "missionImage"    # I
    .param p10, "iRespondTurnID"    # I

    .line 38
    move-object v0, p0

    invoke-direct/range {p0 .. p9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;-><init>(Ljava/lang/String;IIIIIIII)V

    .line 31
    const v1, -0xfe7f

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iLastTurnID:I

    .line 32
    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iRespondTurnID:I

    .line 34
    const-string v2, ""

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->sText2:Ljava/lang/String;

    .line 35
    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iText2Width:I

    .line 40
    move/from16 v2, p10

    iput v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iRespondTurnID:I

    .line 42
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    const-string v5, "DaysX"

    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->sText2:Ljava/lang/String;

    .line 44
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    move v5, p2

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->sText2:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 45
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iText2Width:I

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "tWMax":I
    :goto_3c
    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v6

    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iText2Width:I

    sub-int/2addr v6, v7

    if-le v4, v6, :cond_94

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x5

    if-le v4, v6, :cond_94

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x64

    if-ge v3, v4, :cond_94

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->setText(Ljava/lang/String;)V

    goto :goto_3c

    .line 51
    :cond_94
    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 12

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getText()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Event"

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, ""

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 137
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ClickToView"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 141
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 142
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 22
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 62
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 64
    sget v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->animationState:I

    if-ltz v0, :cond_1da

    .line 65
    sget v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->animationState:I

    const-wide/16 v10, 0x7d0

    const v8, 0x3eb33333    # 0.35f

    const/high16 v12, 0x44fa0000    # 2000.0f

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v0, :cond_df

    .line 66
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    mul-float v0, v0, v13

    div-float/2addr v0, v12

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 68
    .local v0, "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 69
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int v5, v3, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v6, v3

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 70
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    add-int v5, v3, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v6, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 72
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v14, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    sub-long/2addr v6, v14

    long-to-float v6, v6

    mul-float v6, v6, v13

    div-float/2addr v6, v12

    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v6, v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v5, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getHeight()I

    move-result v2

    add-int/lit8 v7, v2, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 75
    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v4, v10

    cmp-long v6, v2, v4

    if-gez v6, :cond_dd

    .line 76
    sget v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->animationState:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->animationState:I

    .line 77
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    .line 79
    .end local v0    # "drawPerc":F
    :cond_dd
    goto/16 :goto_1d5

    .line 81
    :cond_df
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    mul-float v0, v0, v13

    div-float/2addr v0, v12

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 83
    .restart local v0    # "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 84
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int v5, v3, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    sub-int v6, v3, v6

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 85
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    add-int v5, v3, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    sub-int v6, v3, v6

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 87
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v14, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    sub-long/2addr v6, v14

    long-to-float v6, v6

    mul-float v6, v6, v13

    div-float/2addr v6, v12

    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v6, v6, v8

    sub-float/2addr v8, v6

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v5, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getHeight()I

    move-result v2

    add-int/lit8 v7, v2, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 90
    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v4, v10

    cmp-long v6, v2, v4

    if-gez v6, :cond_1d5

    .line 91
    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->animationState:I

    .line 92
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->lTimeAnimation:J

    .line 96
    .end local v0    # "drawPerc":F
    :cond_1d5
    :goto_1d5
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    :cond_1da
    :try_start_1da
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iLastTurnID:I

    if-eq v0, v2, :cond_220

    .line 101
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iLastTurnID:I

    .line 103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "DaysX"

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iRespondTurnID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->sText2:Ljava/lang/String;

    .line 105
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->fontID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 106
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iText2Width:I

    .line 108
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iRespondTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_220

    .line 109
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right$1;

    const-string v2, "RebuildInGameRight"

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getCurrent()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right$1;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 122
    :cond_220
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->fontID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->sText2:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->iText2Width:I

    sub-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getIsHovered()Z

    move-result v0
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_24d} :catch_25b

    move/from16 v8, p4

    :try_start_24f
    invoke-static {v8, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_258} :catch_259

    .line 125
    goto :goto_261

    .line 123
    :catch_259
    move-exception v0

    goto :goto_25e

    :catch_25b
    move-exception v0

    move/from16 v8, p4

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    :goto_25e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 126
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_261
    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 57
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 58
    return-void
.end method
