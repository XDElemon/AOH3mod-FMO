.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
.source "MenuTitleIMG.java"


# instance fields
.field public imageID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZZI)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nHeight"    # I
    .param p3, "fontID"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z
    .param p6, "imageID"    # I

    .line 23
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IIZZ)V

    .line 24
    iput p6, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZI)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nHeight"    # I
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z
    .param p5, "imageID"    # I

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IZZ)V

    .line 19
    iput p5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "moveable"    # Z
    .param p3, "resizable"    # Z
    .param p4, "imageID"    # I

    .line 13
    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IZZ)V

    .line 14
    iput p4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    .line 15
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

    .line 31
    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->getHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 33
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 34
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 35
    return-void
.end method
