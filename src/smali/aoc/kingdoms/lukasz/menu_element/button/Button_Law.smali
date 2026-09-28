.class public Laoc/kingdoms/lukasz/menu_element/button/Button_Law;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_Law.java"


# instance fields
.field public imageID:I


# direct methods
.method public constructor <init>(III)V
    .registers 16
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "imageID"    # I

    .line 13
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 14
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getButtonWidth()I

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getButtonHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 16
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->imageID:I

    .line 17
    return-void
.end method

.method public static getButtonHeight()I
    .registers 2

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/map/LawsManager;->lawsImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getButtonWidth()I
    .registers 2

    .line 34
    sget-object v0, Laoc/kingdoms/lukasz/map/LawsManager;->lawsImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 21
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p4, :cond_1d

    .line 22
    :cond_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 25
    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/map/LawsManager;->lawsImages:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->imageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 26
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 31
    return-void
.end method
