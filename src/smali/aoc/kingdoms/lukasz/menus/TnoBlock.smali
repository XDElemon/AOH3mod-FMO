.class public Laoc/kingdoms/lukasz/menus/TnoBlock;
.super Ljava/lang/Object;
.source "TnoBlock.java"

# static fields

.field public static btnList:Ljava/util/List;

# r6t002: TNO main-menu block (frame + 3 pics + base + 3 buttons)

# direct methods
.method private static addButton(Ljava/util/List;Ljava/lang/String;II)V
    .registers 16
    .param p0, "list"    # Ljava/util/List;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "idx"    # I
    .param p3, "mode"    # I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    mul-int/lit8 v10, v10, 0x5
    div-int/lit8 v10, v10, 0xb

    div-int/lit8 v6, v10, 0x3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    sub-int/2addr v11, v10
    div-int/lit8 v11, v11, 0x2

    mul-int v4, p2, v6
    add-int/2addr v4, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->tnoButtonEdge:I
    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v11
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I
    move-result v7

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->tnoTvButtonEdge:I
    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v11
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I
    move-result v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I
    sub-int/2addr v10, v11
    sub-int/2addr v11, v7
    div-int/lit8 v11, v11, 0x2
    add-int v5, v10, v11

    new-instance v0, Laoc/kingdoms/lukasz/menus/TnoButton;
    move-object v1, p1
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    const/4 v3, -0x1
    const/4 v8, 0x1
    move v9, p3
    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/TnoButton;-><init>(Ljava/lang/String;IIIIIIZI)V

    sget-object v10, Laoc/kingdoms/lukasz/menus/TnoBlock;->btnList:Ljava/util/List;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public static showButtons(Z)V
    .registers 6
    .param p0, "show"    # Z

    sget-object v0, Laoc/kingdoms/lukasz/menus/TnoBlock;->btnList:Ljava/util/List;
    if-eqz v0, :done
    const/4 v1, 0x0
    :loop
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :loop_done
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/menus/TnoButton;
    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V
    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V
    add-int/lit8 v1, v1, 0x1
    goto :loop
    :loop_done
    :done
    return-void
.end method

.method public static populate(Ljava/util/List;)V
    .registers 6
    .param p0, "list"    # Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    sput-object v3, Laoc/kingdoms/lukasz/menus/TnoBlock;->btnList:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v1, "StartGame"
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x0
    const/4 v2, 0x0
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/menus/TnoBlock;->addButton(Ljava/util/List;Ljava/lang/String;II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v1, "Editor"
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x1
    const/4 v2, 0x1
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/menus/TnoBlock;->addButton(Ljava/util/List;Ljava/lang/String;II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v1, "ExitGame"
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x2
    const/4 v2, 0x2
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/menus/TnoBlock;->addButton(Ljava/util/List;Ljava/lang/String;II)V

    const-string v0, "nTNO2 v=r6t002 block=1"
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

.method private static drawImage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    .registers 12
    .param p0, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v0
    move-object v1, p0
    move v2, p2
    move v3, p3
    move v4, p4
    move v5, p5
    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    return-void
.end method

.method public static draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 18
    .param p0, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "translateX"    # I
    .param p2, "translateY"    # I

    sget-boolean v14, Laoc/kingdoms/lukasz/menus/HoiBox;->open:Z
    if-nez v14, :tno_detail_done

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    mul-int/lit8 v0, v0, 0x5
    div-int/lit8 v0, v0, 0xb

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->tnoFrame:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v6
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I
    move-result v7
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I
    move-result v8
    mul-int v1, v0, v8
    div-int/2addr v1, v7

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    sub-int/2addr v2, v0
    div-int/lit8 v2, v2, 0x2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->tnoTvButtonEdge:I
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v6
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I
    move-result v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I
    sub-int/2addr v3, v5
    sub-int v4, v3, v1

    move-object v9, p0
    sget v10, Laoc/kingdoms/lukasz/textures/Images;->tnoFrame:I
    add-int v11, v2, p1
    add-int v12, v4, p2
    move v13, v0
    move v14, v1
    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/menus/TnoBlock;->drawImage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    move-object v9, p0
    sget v10, Laoc/kingdoms/lukasz/textures/Images;->tnoPic1:I
    const/16 v6, 0x13
    mul-int v7, v0, v6
    const/16 v6, 0x7bd
    div-int/2addr v7, v6
    add-int v11, v2, v7
    add-int v11, v11, p1
    const/16 v6, 0x40
    mul-int v7, v1, v6
    const/16 v6, 0x319
    div-int/2addr v7, v6
    add-int v12, v4, v7
    add-int v12, v12, p2
    const/16 v6, 0x26b
    mul-int v13, v0, v6
    const/16 v6, 0x7bd
    div-int/2addr v13, v6
    const/16 v6, 0x2c1
    mul-int v14, v1, v6
    const/16 v6, 0x319
    div-int/2addr v14, v6
    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/menus/TnoBlock;->drawImage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    move-object v9, p0
    sget v10, Laoc/kingdoms/lukasz/textures/Images;->tnoPic2:I
    const/16 v6, 0x2a4
    mul-int v7, v0, v6
    const/16 v6, 0x7bd
    div-int/2addr v7, v6
    add-int v11, v2, v7
    add-int v11, v11, p1
    const/16 v6, 0x40
    mul-int v7, v1, v6
    const/16 v6, 0x319
    div-int/2addr v7, v6
    add-int v12, v4, v7
    add-int v12, v12, p2
    const/16 v6, 0x26f
    mul-int v13, v0, v6
    const/16 v6, 0x7bd
    div-int/2addr v13, v6
    const/16 v6, 0x2c1
    mul-int v14, v1, v6
    const/16 v6, 0x319
    div-int/2addr v14, v6
    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/menus/TnoBlock;->drawImage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    move-object v9, p0
    sget v10, Laoc/kingdoms/lukasz/textures/Images;->tnoPic3:I
    const/16 v6, 0x53b
    mul-int v7, v0, v6
    const/16 v6, 0x7bd
    div-int/2addr v7, v6
    add-int v11, v2, v7
    add-int v11, v11, p1
    const/16 v6, 0x40
    mul-int v7, v1, v6
    const/16 v6, 0x319
    div-int/2addr v7, v6
    add-int v12, v4, v7
    add-int v12, v12, p2
    const/16 v6, 0x26c
    mul-int v13, v0, v6
    const/16 v6, 0x7bd
    div-int/2addr v13, v6
    const/16 v6, 0x2c1
    mul-int v14, v1, v6
    const/16 v6, 0x319
    div-int/2addr v14, v6
    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/menus/TnoBlock;->drawImage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    move-object v9, p0
    sget v10, Laoc/kingdoms/lukasz/textures/Images;->tnoTvButtonEdge:I
    add-int v11, v2, p1
    add-int v12, v3, p2
    move v13, v0
    move v14, v5
    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/menus/TnoBlock;->drawImage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :tno_detail_done
    return-void
.end method