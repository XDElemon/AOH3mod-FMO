.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "ButtonGame2Sparks_Hovered.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .registers 8
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "isClickable"    # Z

    .line 12
    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZI)V
    .registers 9
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "isClickable"    # Z
    .param p8, "nHeight"    # I

    .line 16
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZZ)V
    .registers 9
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "isClickable"    # Z
    .param p8, "checkBox"    # Z

    .line 20
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZZ)V

    .line 21
    return-void
.end method


# virtual methods
.method public drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 27
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p4, :cond_2f

    .line 28
    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 29
    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationHover:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 30
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 32
    :cond_2f
    return-void
.end method
