.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;
.super Ljava/lang/Object;
.source "ButtonBuilding_Special.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerStat"
.end annotation


# instance fields
.field public iH:I

.field public iTextW:I

.field public iW:I

.field public iX:I

.field public iY:I

.field public img:I

.field public imgH:I

.field public imgW:I

.field public text:Ljava/lang/String;

.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;Ljava/lang/String;IIIII)V
    .registers 11
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "img"    # I
    .param p4, "iX"    # I
    .param p5, "iY"    # I
    .param p6, "iW"    # I
    .param p7, "iH"    # I

    .line 249
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iX:I

    .line 251
    iput p5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iY:I

    .line 252
    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iW:I

    .line 253
    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iH:I

    .line 255
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->img:I

    .line 256
    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->imgW:I

    .line 257
    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->imgH:I

    .line 259
    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->text:Ljava/lang/String;

    .line 260
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 261
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iTextW:I

    .line 263
    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 266
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 267
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iX:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iY:I

    add-int/2addr v0, v3

    add-int v3, v0, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iW:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iH:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 269
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 270
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iX:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iY:I

    add-int/2addr v0, v3

    add-int v3, v0, p3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconMaxW:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iH:I

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 272
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->img:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget v2, v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconMaxW:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->imgW:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iY:I

    add-int/2addr v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->imgH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->imgW:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->imgH:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 274
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->text:Ljava/lang/String;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iX:I

    add-int/2addr v0, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget v3, v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconMaxW:I

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iW:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget v4, v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconMaxW:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iTextW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v0

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iY:I

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->iH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    iget v4, v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v0

    invoke-static {p4, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 275
    return-void
.end method
