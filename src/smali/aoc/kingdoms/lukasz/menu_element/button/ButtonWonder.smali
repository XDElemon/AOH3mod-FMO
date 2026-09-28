.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonWonder;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonWonder.java"


# direct methods
.method public constructor <init>(II)V
    .registers 15
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I

    .line 10
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 11
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->wonderIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->wonderIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonWonder;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 12
    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 17
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->wonderIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonWonder;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonWonder;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 20
    goto :goto_11

    .line 18
    :catch_10
    move-exception v0

    .line 21
    :goto_11
    return-void
.end method
