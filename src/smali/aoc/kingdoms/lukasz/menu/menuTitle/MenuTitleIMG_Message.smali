.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Message;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "MenuTitleIMG_Message.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZZI)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nHeight"    # I
    .param p3, "fontID"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z
    .param p6, "imageID"    # I

    .line 21
    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;IIZZI)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZI)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nHeight"    # I
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z
    .param p5, "imageID"    # I

    .line 17
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;IZZI)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "moveable"    # Z
    .param p3, "resizable"    # Z
    .param p4, "imageID"    # I

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    .line 14
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 27
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 29
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->message:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Message;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->message:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Message;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->message:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 30
    return-void
.end method
