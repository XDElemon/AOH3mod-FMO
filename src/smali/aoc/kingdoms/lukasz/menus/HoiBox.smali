.class public Laoc/kingdoms/lukasz/menus/HoiBox;
.super Ljava/lang/Object;
.source "HoiBox.java"


# static fields
.field public static open:Z

.field public static btnList:Ljava/util/List;


# direct methods
.method private static addOne(Ljava/util/List;Ljava/lang/String;III)V
    .registers 14
    .param p0, "list"    # Ljava/util/List;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "mode"    # I

    new-instance v0, Laoc/kingdoms/lukasz/menus/HoiButton;
    move-object v1, p1
    move v2, p2
    move v3, p3
    const/16 v4, 0x1e0
    const/16 v5, 0x54
    move v6, p4
    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menus/HoiButton;-><init>(Ljava/lang/String;IIIII)V

    const/4 v7, 0x0
    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V
    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    sget-object v7, Laoc/kingdoms/lukasz/menus/HoiBox;->btnList:Ljava/util/List;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public static populate(Ljava/util/List;)V
    .registers 16
    .param p0, "list"    # Ljava/util/List;

    const/4 v0, 0x0
    sput-boolean v0, Laoc/kingdoms/lukasz/menus/HoiBox;->open:Z

    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    sput-object v0, Laoc/kingdoms/lukasz/menus/HoiBox;->btnList:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    const/16 v1, 0x230
    sub-int/2addr v0, v1
    div-int/lit8 v0, v0, 0x2
    add-int/lit8 v1, v0, 0x28
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I
    sget-boolean v5, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z
    const/16 v6, 0x4
    if-eqz v5, :cond_pn5
    const/16 v6, 0x5
    :cond_pn5
    const/16 v7, 0x34
    const/16 v5, 0x54
    mul-int v2, v6, v5
    add-int/2addr v7, v2
    add-int/lit8 v5, v6, -0x1
    mul-int/lit8 v5, v5, 0xa
    add-int/2addr v7, v5
    sub-int/2addr v4, v7
    div-int/lit8 v4, v4, 0x2
    add-int/lit8 v3, v4, 0x1a
    sget-boolean v4, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z
    if-eqz v4, :cond_skip_continue

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v6, "Continue"
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const/4 v2, 0x0
    invoke-static {p0, v5, v1, v3, v2}, Laoc/kingdoms/lukasz/menus/HoiBox;->addOne(Ljava/util/List;Ljava/lang/String;III)V
    add-int/lit8 v3, v3, 0x5e

    :cond_skip_continue
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v6, "NewGame"
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const/4 v2, 0x1
    invoke-static {p0, v5, v1, v3, v2}, Laoc/kingdoms/lukasz/menus/HoiBox;->addOne(Ljava/util/List;Ljava/lang/String;III)V
    add-int/lit8 v3, v3, 0x5e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v6, "LoadGame"
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const/4 v2, 0x2
    invoke-static {p0, v5, v1, v3, v2}, Laoc/kingdoms/lukasz/menus/HoiBox;->addOne(Ljava/util/List;Ljava/lang/String;III)V
    add-int/lit8 v3, v3, 0x5e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v6, "Settings"
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const/4 v2, 0x3
    invoke-static {p0, v5, v1, v3, v2}, Laoc/kingdoms/lukasz/menus/HoiBox;->addOne(Ljava/util/List;Ljava/lang/String;III)V
    add-int/lit8 v3, v3, 0x5e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    const-string v6, "Back"
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const/4 v2, 0x4
    invoke-static {p0, v5, v1, v3, v2}, Laoc/kingdoms/lukasz/menus/HoiBox;->addOne(Ljava/util/List;Ljava/lang/String;III)V

    const-string v5, "nTNO6 v=r6t006 box=1"
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

.method public static openBox()V
    .registers 4

    sget-object v0, Laoc/kingdoms/lukasz/menus/HoiBox;->btnList:Ljava/util/List;
    if-eqz v0, :done

    const/4 v1, 0x1
    sput-boolean v1, Laoc/kingdoms/lukasz/menus/HoiBox;->open:Z
    const/4 v1, 0x0

    :loop
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :loop_done

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/menus/HoiButton;
    const/4 v3, 0x1
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V
    add-int/lit8 v1, v1, 0x1
    goto :loop

    :loop_done
    const/4 v3, 0x0
    invoke-static {v3}, Laoc/kingdoms/lukasz/menus/TnoBlock;->showButtons(Z)V
    const-string v1, "nTNO6 v=r6t006 open=1"
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :done
    return-void
.end method

.method public static closeBox()V
    .registers 4

    sget-object v0, Laoc/kingdoms/lukasz/menus/HoiBox;->btnList:Ljava/util/List;
    if-eqz v0, :done

    const/4 v1, 0x0
    sput-boolean v1, Laoc/kingdoms/lukasz/menus/HoiBox;->open:Z

    :loop
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :loop_done

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/menus/HoiButton;
    const/4 v3, 0x0
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V
    add-int/lit8 v1, v1, 0x1
    goto :loop

    :loop_done
    const/4 v3, 0x1
    invoke-static {v3}, Laoc/kingdoms/lukasz/menus/TnoBlock;->showButtons(Z)V
    const-string v1, "nTNO6 v=r6t006 close=1"
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :done
    return-void
.end method

.method public static draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p0, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "translateX"    # I
    .param p2, "translateY"    # I

    sget-boolean v4, Laoc/kingdoms/lukasz/menus/HoiBox;->open:Z
    if-eqz v4, :hoi_done

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    const/16 v1, 0x230
    sub-int/2addr v0, v1
    div-int/lit8 v0, v0, 0x2
    sget-boolean v4, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z
    const/16 v2, 0x4
    if-eqz v4, :cond_n5
    const/16 v2, 0x5
    :cond_n5
    const/16 v3, 0x34
    const/16 v5, 0x54
    mul-int v6, v2, v5
    add-int/2addr v3, v6
    add-int/lit8 v5, v2, -0x1
    mul-int/lit8 v5, v5, 0xa
    add-int/2addr v3, v5
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I
    sub-int/2addr v1, v3
    div-int/lit8 v1, v1, 0x2

    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v6, 0x0
    const v7, 0x3f0ccccd
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;
    move-object v8, p0
    move v9, p1
    move v10, p2
    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const v4, 0x3e99999a
    const v5, 0x3e9eb852
    const v6, 0x3eb33333
    const v7, 0x3f59999a
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;
    move-object v8, p0
    add-int/lit8 v9, v0, -0x2
    add-int v9, v9, p1
    add-int/lit8 v10, v1, -0x2
    add-int v10, v10, p2
    const/16 v11, 0x234
    add-int/lit8 v12, v3, 0x4
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const v4, 0x3d75c28f
    const v5, 0x3d8f5c29
    const v6, 0x3db851ec
    const v7, 0x3f4ccccd
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;
    move-object v8, p0
    add-int v9, v0, p1
    add-int v10, v1, p2
    const/16 v11, 0x230
    move v12, v3
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/4 v4, 0x1
    :loop_sep
    if-ge v4, v2, :loop_done
    const v6, 0x3ee66666
    const v7, 0x3eeb851f
    const v8, 0x3f000000
    const v9, 0x3e99999a
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    add-int/lit8 v5, v1, 0x15
    const/16 v6, 0x5e
    mul-int v6, v4, v6
    add-int/2addr v5, v6
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;
    move-object v8, p0
    add-int/lit8 v9, v0, 0x28
    add-int v9, v9, p1
    add-int v10, v5, p2
    const/16 v11, 0x1e0
    const/4 v12, 0x1
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    add-int/lit8 v4, v4, 0x1
    goto :loop_sep

    :loop_done
    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :hoi_done
    return-void
.end method