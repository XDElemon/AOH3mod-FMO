.class public Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;
.super Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;
.source "InGameDrawOver_RecruitArmy.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;-><init>()V

    .line 15
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->fontID:I

    .line 17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ChooseAProvince"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->sText:Ljava/lang/String;

    .line 19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->sText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iTextWidth:I

    .line 21
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iTextHeight:I

    .line 23
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;->getButtonHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iPosY:I

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->drawAllTheTime:Z

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I

    .line 30
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->drawAllTheTime:Z

    if-eqz v0, :cond_5a

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 33
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 38
    .local v0, "tX":I
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iPosY:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0xe

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iTextHeight:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 39
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 41
    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->fontID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->sText:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iTextWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v5, v1, p2

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;->iPosY:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v6, v1, p3

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS3:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 43
    .end local v0    # "tX":I
    :cond_5a
    return-void
.end method
