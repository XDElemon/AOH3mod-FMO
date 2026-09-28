.class public Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;
.super Laoc/kingdoms/lukasz/menu_element/IconCourt;
.source "IconCourt_Notification.java"


# instance fields
.field public boxH:I

.field public boxW:I

.field public numH:I

.field public numW:I

.field public number:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "id"    # I
    .param p8, "widthDraw"    # I

    .line 26
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/IconCourt;-><init>(Ljava/lang/String;IIIIIII)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    .line 23
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    .line 27
    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 34
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->updateValue()V

    .line 36
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->value:I

    if-lez v0, :cond_8f

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getIsHovered()Z

    move-result v4

    if-nez v4, :cond_24

    if-eqz p4, :cond_21

    goto :goto_24

    :cond_21
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_27

    :cond_24
    :goto_24
    const v4, 0x3f19999a    # 0.6f

    :goto_27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 38
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    sub-int/2addr v0, v3

    add-int v3, v0, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 39
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 41
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 43
    :cond_8f
    return-void
.end method

.method public setNumber(I)V
    .registers 6
    .param p1, "iNum"    # I

    .line 50
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->value:I

    .line 52
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->value:I

    const/4 v1, 0x0

    if-gtz v0, :cond_c

    .line 53
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    .line 54
    return-void

    .line 57
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->SIDEBAR_MAX_NUMBER:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->value:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    .line 60
    :try_start_2b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 61
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 63
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 65
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I

    .line 66
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    .line 67
    .end local v0    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    goto :goto_52

    .line 68
    :cond_4e
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_52} :catch_53

    .line 72
    :goto_52
    goto :goto_54

    .line 70
    :catch_53
    move-exception v0

    .line 74
    :goto_54
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    .line 75
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    .line 76
    return-void
.end method

.method public updateValue()V
    .registers 1

    .line 47
    return-void
.end method
