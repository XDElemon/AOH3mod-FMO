.class public Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_SupremeCourt.java"


# direct methods
.method public constructor <init>(II)V
    .registers 15
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I

    .line 13
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 14
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->supremeCourt:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->getButtonHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 15
    return-void
.end method

.method public static getButtonHeight()I
    .registers 1

    .line 32
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->supremeCourt:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .registers 2

    .line 37
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->getHoverSupremeCourt()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 38
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p4, :cond_29

    .line 20
    :cond_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->supremeCourt:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->supremeCourt:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 23
    :cond_29
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->supremeCourt:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_SupremeCourt;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 24
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 29
    return-void
.end method
