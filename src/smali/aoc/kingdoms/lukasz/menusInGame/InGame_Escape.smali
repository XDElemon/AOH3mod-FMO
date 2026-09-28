.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Escape.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x7d


# instance fields
.field private lTime:J


# direct methods
.method public constructor <init>()V
    .registers 21

    .line 35
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    move-object/from16 v11, p0

    iput-wide v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->lTime:J

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 39
    .local v1, "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 41
    .local v12, "titleHeight":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 43
    .local v13, "menuWidth":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v14, v2, 0xa

    .line 44
    .local v14, "menuX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v15, v2, 0xa

    .line 47
    .local v15, "menuY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    add-int v16, v2, v3

    .line 48
    .local v16, "buttonYPadding":I
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 50
    .local v17, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v2, 0x4

    .line 52
    .local v18, "textPosX":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$1;

    const/4 v8, 0x0

    const/16 v19, 0x1

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, v10

    move-object/from16 v3, p0

    move v9, v13

    move-object v11, v10

    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v17, v17, v2

    .line 70
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$2;

    mul-int/lit8 v2, v1, 0x2

    sub-int v9, v13, v2

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v11

    move v7, v1

    move/from16 v8, v17

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v17, v17, v2

    .line 85
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$3;

    mul-int/lit8 v2, v1, 0x2

    sub-int v9, v13, v2

    move-object v2, v11

    move/from16 v8, v17

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v2, v2, v16

    add-int v17, v17, v2

    .line 110
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$4;

    mul-int/lit8 v2, v1, 0x2

    sub-int v9, v13, v2

    move-object v2, v11

    move/from16 v8, v17

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v17, v17, v2

    .line 128
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$5;

    mul-int/lit8 v2, v1, 0x2

    sub-int v9, v13, v2

    move-object v2, v11

    move/from16 v8, v17

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v17, v17, v2

    .line 157
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$6;

    mul-int/lit8 v2, v1, 0x2

    sub-int v9, v13, v2

    move-object v2, v11

    move/from16 v8, v17

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    add-int v11, v17, v2

    .line 170
    .end local v17    # "buttonY":I
    .local v11, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v12

    sub-int/2addr v2, v15

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 172
    .local v17, "menuHeight":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v4, v2, 0xa

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v12, v17

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v2, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move v6, v13

    move/from16 v7, v17

    move-object v8, v0

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 173
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 179
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    :try_start_4
    iget-wide v0, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->lTime:J

    const-wide/16 v16, 0x7d

    add-long v0, v0, v16

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1a

    .line 180
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->lTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42fa0000    # 125.0f

    div-float/2addr v0, v1

    .local v0, "fAlpha":F
    goto :goto_1c

    .line 182
    .end local v0    # "fAlpha":F
    :cond_1a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 185
    .restart local v0    # "fAlpha":F
    :goto_1c
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v0

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 186
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 188
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v0

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 189
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal3:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int v4, v2, p3

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v6, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 192
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 194
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 196
    sget-object v1, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 197
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 199
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int v4, v2, p3

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v6, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 201
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal3:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int v4, v2, p3

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v6, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 205
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 208
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_SaveGame()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 209
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v0

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 210
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 213
    :cond_f1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e19999a    # 0.15f

    mul-float v2, v2, v0

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 214
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->patt2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 216
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ee66666    # 0.45f

    mul-float v2, v2, v0

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 218
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    div-int/lit8 v5, v2, 0x2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 219
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v10, v1, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    div-int/lit8 v12, v1, 0x2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p1

    move-object v6, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 221
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    div-int/lit8 v8, v2, 0x2

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v15, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 222
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/lit8 v1, v1, 0x0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int v11, v1, v2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    div-int/lit8 v13, v1, 0x2

    const/4 v14, 0x0

    const/4 v1, 0x1

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object v6, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 224
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 225
    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v2, v3

    add-int v4, v2, p3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v15, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 226
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 228
    iget-wide v1, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->lTime:J

    add-long v1, v1, v16

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1cb

    .line 229
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    sub-int v1, p3, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c3} :catch_21c

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    move/from16 v16, v1

    .end local p3    # "iTranslateY":I
    .local v1, "iTranslateY":I
    goto :goto_1cd

    .line 228
    .end local v1    # "iTranslateY":I
    .restart local p3    # "iTranslateY":I
    :cond_1cb
    move/from16 v16, p3

    .line 232
    .end local p3    # "iTranslateY":I
    .local v16, "iTranslateY":I
    :goto_1cd
    :try_start_1cd
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getPosY()I

    move-result v2

    add-int v2, v2, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    invoke-static {v15, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getPosX()I

    move-result v1

    add-int v9, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getPosY()I

    move-result v1

    add-int v10, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v1, v2

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move v15, v1

    invoke-static/range {v8 .. v15}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 236
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-super/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_219} :catch_21a

    .line 239
    .end local v0    # "fAlpha":F
    goto :goto_222

    .line 237
    :catch_21a
    move-exception v0

    goto :goto_21f

    .end local v16    # "iTranslateY":I
    .restart local p3    # "iTranslateY":I
    :catch_21c
    move-exception v0

    move/from16 v16, p3

    .line 238
    .end local p3    # "iTranslateY":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v16    # "iTranslateY":I
    :goto_21f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 240
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_222
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 284
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 285
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameEscape()V

    .line 286
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 273
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 275
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;->lTime:J

    .line 277
    if-nez p1, :cond_f

    .line 278
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_SaveGame(Z)V

    .line 280
    :cond_f
    return-void
.end method

.method public updateLanguage()V
    .registers 1

    .line 266
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 269
    return-void
.end method
