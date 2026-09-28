.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "ButtonBattleRegimentEmpty.java"


# instance fields
.field public imageID:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "imageID"    # I
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I

    .line 17
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 18
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 20
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->imageID:I

    .line 22
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setPosX(I)V

    .line 23
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setPosY(I)V

    .line 24
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setWidth(I)V

    .line 25
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setHeight(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getImageAlpha(Z)F

    move-result v2

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 31
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 32
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 34
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 35
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 36
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 39
    :cond_4f
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 40
    return-void
.end method

.method public getImageAlpha(Z)F
    .registers 3
    .param p1, "isActive"    # Z

    .line 43
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_9

    goto :goto_d

    :cond_9
    const v0, 0x3e19999a    # 0.15f

    goto :goto_10

    :cond_d
    :goto_d
    const v0, 0x3eb33333    # 0.35f

    :goto_10
    return v0
.end method
