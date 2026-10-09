.class public Laoc/kingdoms/lukasz/menus/TnoButton;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TnoButton.java"


# instance fields
.field private actionMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIZI)V
    .registers 12
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "textPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "clickable"    # Z
    .param p9, "actionMode"    # I

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIIZ)V

    iput p9, p0, Laoc/kingdoms/lukasz/menus/TnoButton;->actionMode:I

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    iget v0, p0, Laoc/kingdoms/lukasz/menus/TnoButton;->actionMode:I

    if-eqz v0, :cond_new_game

    const/4 v1, 0x1
    if-eq v0, v1, :cond_editor

    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V
    return-void

:cond_new_game
    sget-boolean v0, Laoc/kingdoms/lukasz/menus/HoiBox;->open:Z
    if-eqz v0, :cond_box_open
    invoke-static {}, Laoc/kingdoms/lukasz/menus/HoiBox;->closeBox()V
    return-void

    :cond_box_open
    invoke-static {}, Laoc/kingdoms/lukasz/menus/HoiBox;->openBox()V
    return-void

    :cond_editor
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->clearProvinceBorder()V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR:Laoc/kingdoms/lukasz/menu/View;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    if-eqz p4, :cond_hover

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnLH:I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnMH:I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnRH:I
    goto :goto_draw

    :cond_hover
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/TnoButton;->getIsHovered()Z
    move-result v3
    if-eqz v3, :cond_normal

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnLH:I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnMH:I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnRH:I
    goto :goto_draw

    :cond_normal
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnL:I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnM:I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->tnoBtnR:I

    :goto_draw
    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p1, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/TnoButton;->getPosX()I
    move-result v4
    add-int v4, v4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/TnoButton;->getPosY()I
    move-result v5
    add-int v5, v5, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/TnoButton;->getWidth()I
    move-result v6

    move-object v8, p1
    const/16 v12, 0x24

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v7
    move v9, v4
    move v10, v5
    const/4 v11, 0x6
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v7
    add-int/lit8 v9, v4, 0x6
    add-int/lit8 v11, v6, -0xc
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v7
    add-int v9, v4, v6
    add-int/lit8 v9, v9, -0x6
    const/4 v11, 0x6
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p1, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    return-void
.end method