.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;
.super Ljava/lang/Object;
.source "Graph_Vertical_Info.java"


# instance fields
.field private iTextPosX:I

.field private iTextWidth:I

.field private iTextsSize:I

.field private isMoveable:Z

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lSortedIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTextWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private moveRight:Z


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;IZ)V
    .registers 13
    .param p3, "iWidth"    # I
    .param p4, "nSortText"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;IZ)V"
        }
    .end annotation

    .line 32
    .local p1, "nTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    .line 18
    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    .line 19
    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    .line 21
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    .line 22
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    .line 23
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    .line 24
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    .line 26
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTime:J

    .line 28
    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "tempAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge v2, v3, :cond_53

    .line 42
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 45
    .end local v2    # "i":I
    :cond_53
    const/4 v2, 0x1

    if-eqz p4, :cond_cf

    .line 46
    :goto_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_d3

    .line 47
    const/4 v3, 0x0

    .line 49
    .local v3, "nMinID":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge v4, v5, :cond_79

    .line 50
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_76

    .line 51
    move v3, v4

    .line 52
    goto :goto_79

    .line 49
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 56
    .end local v4    # "i":I
    :cond_79
    :goto_79
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "i":I
    :goto_7b
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge v4, v5, :cond_a1

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 58
    move v3, v4

    .line 56
    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 62
    .end local v4    # "i":I
    :cond_a1
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v3    # "nMinID":I
    goto :goto_56

    .line 71
    :cond_cf
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    .line 72
    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    .line 76
    :cond_d3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    .line 78
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 80
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ed
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge v3, v5, :cond_121

    .line 81
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 82
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    .line 83
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_ed

    .line 86
    .end local v3    # "i":I
    :cond_121
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 88
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    mul-int v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    sub-int/2addr v6, v2

    mul-int v5, v5, v6

    add-int/2addr v3, v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    int-to-float v4, v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    .line 90
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->updateMoveable(I)V

    .line 91
    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I

    .line 108
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    const v1, 0x3f333333    # 0.7f

    if-eqz v0, :cond_52

    .line 110
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    neg-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    invoke-static {p1, p2, v0, p4, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 112
    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTime:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v6, 0x2d

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_52

    .line 113
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTime:J

    .line 115
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    if-eqz v0, :cond_42

    .line 116
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    .line 118
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    neg-int v0, v0

    add-int/2addr v0, p4

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_52

    .line 119
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    goto :goto_52

    .line 123
    :cond_42
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    .line 125
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    if-ltz v0, :cond_52

    .line 126
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    .line 132
    :cond_52
    :goto_52
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "tempOffsetX":I
    :goto_54
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge v0, v3, :cond_10f

    .line 133
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 134
    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v3, p2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int v6, v3, v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v8, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v9, v3

    move-object v5, p1

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 135
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 136
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    add-int v3, p2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int v6, v3, v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v8, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v9, v3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 138
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 140
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int v4, p2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int/2addr v4, v5

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v3, v4, p3, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 142
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_54

    .line 145
    .end local v0    # "i":I
    .end local v2    # "tempOffsetX":I
    :cond_10f
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    if-eqz v0, :cond_116

    .line 147
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 149
    :cond_116
    return-void
.end method

.method protected final getColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    return-object v0
.end method

.method protected final getSorted()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    return-object v0
.end method

.method protected final getSortedID(I)I
    .registers 3
    .param p1, "i"    # I

    .line 171
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final getText(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 163
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final getTextSize()I
    .registers 2

    .line 159
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    return v0
.end method

.method protected final resetisMoveable()V
    .registers 2

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    .line 154
    return-void
.end method

.method protected final updateMoveable(I)V
    .registers 4
    .param p1, "iWidth"    # I

    .line 94
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    if-le v0, p1, :cond_b

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    .line 96
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->resetisMoveable()V

    goto :goto_1a

    .line 99
    :cond_b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->resetisMoveable()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    .line 101
    div-int/lit8 v0, p1, 0x2

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    .line 103
    :goto_1a
    return-void
.end method
