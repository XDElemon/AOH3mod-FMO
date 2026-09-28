.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
.source "MenuTitleIMG_War.java"


# instance fields
.field public iLastTurnID:I

.field public iText2Width:I

.field public iTextLeftWidth:I

.field public iTextLeftWidth2:I

.field public iTextRightWidth:I

.field public iTextRightWidth2:I

.field public imageID:I

.field public sText2:Ljava/lang/String;

.field public sTextLeft:Ljava/lang/String;

.field public sTextLeft2:Ljava/lang/String;

.field public sTextRight:Ljava/lang/String;

.field public sTextRight2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 13
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sTextLeft"    # Ljava/lang/String;
    .param p3, "sTextRight"    # Ljava/lang/String;
    .param p4, "sTextLeft2"    # Ljava/lang/String;
    .param p5, "sTextRight2"    # Ljava/lang/String;
    .param p6, "movable"    # Z
    .param p7, "resizable"    # Z
    .param p8, "imageID"    # I

    .line 40
    invoke-static {p8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0, p6, p7}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IZZ)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth:I

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth2:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth2:I

    .line 35
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I

    .line 37
    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I

    .line 41
    iput p8, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->imageID:I

    .line 43
    iput-object p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft:Ljava/lang/String;

    .line 45
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 46
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 47
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth:I

    .line 49
    iput-object p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight:Ljava/lang/String;

    .line 50
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 51
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth:I

    .line 53
    iput-object p4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft2:Ljava/lang/String;

    .line 54
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 55
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth2:I

    .line 57
    iput-object p5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight2:Ljava/lang/String;

    .line 58
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 59
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth2:I

    .line 62
    :try_start_6f
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDates_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    .line 63
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 64
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_95} :catch_96

    .line 69
    goto :goto_9c

    .line 65
    :catch_96
    move-exception v2

    .line 68
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    .line 71
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_9c
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I

    .line 72
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 80
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 81
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 82
    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 88
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    iget v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eq v0, v3, :cond_5b

    .line 90
    :try_start_a
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 91
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDates_ByTurnID(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    .line 92
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 93
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I

    .line 95
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_43

    .line 107
    :cond_42
    goto :goto_5b

    .line 97
    :catch_43
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 99
    new-instance v3, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War$1;

    const-string v4, "rebuildInGame_Wars"

    invoke-direct {v3, v1, v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War$1;-><init>(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;Ljava/lang/String;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 106
    :cond_58
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5b
    :goto_5b
    iget v6, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->fontID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getText()Ljava/lang/String;

    move-result-object v7

    div-int/lit8 v0, p4, 0x2

    add-int v0, p2, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v0, v3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v9, v0, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 111
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v13, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    div-int/lit8 v0, p4, 0x2

    add-int v0, p2, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v14, v0, v3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v15, v0, v3

    sget-object v16, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v16}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 113
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft2:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, p2, v0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth2:I

    div-int/lit8 v3, v3, 0x2

    sub-int v6, v0, v3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int v7, v0, v3

    sget-object v8, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 114
    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iget-object v11, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight2:Ljava/lang/String;

    add-int v0, p2, p4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth2:I

    div-int/lit8 v3, v3, 0x2

    sub-int v12, v0, v3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v13, v0, v3

    sget-object v14, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 116
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    if-eq v2, v0, :cond_125

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->ACTIVE:Laoc/kingdoms/lukasz/menu_element/Status;

    if-ne v2, v0, :cond_195

    .line 117
    :cond_125
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, p2, v0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v6, v0, v3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextHeight()I

    move-result v7

    sub-int/2addr v3, v7

    add-int v7, v0, v3

    sget-object v8, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 118
    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v11, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight:Ljava/lang/String;

    add-int v0, p2, p4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v12, v0, v3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v13, v0, v3

    sget-object v14, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 120
    :cond_195
    return-void
.end method
