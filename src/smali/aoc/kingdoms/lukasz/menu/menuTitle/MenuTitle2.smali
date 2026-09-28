.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle2;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
.source "MenuTitle2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;FIZZ)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontScale"    # F
    .param p3, "iHeight"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z

    .line 16
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iHeight"    # I
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IZZ)V

    .line 13
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

    .line 23
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle2;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle2;->getHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 25
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle2;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 26
    return-void
.end method
