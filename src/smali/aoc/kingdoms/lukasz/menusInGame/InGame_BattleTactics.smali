.class public Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BattleTactics.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->lTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 28

    .line 39
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v14, v1, v2

    .line 43
    .local v14, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v15

    .line 45
    .local v15, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    .line 47
    .local v2, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v1, v3

    .line 48
    .local v16, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v17, v1, 0x4

    .line 50
    .local v17, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 51
    .local v1, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 55
    .local v3, "buttonX":I
    const/4 v4, 0x0

    move v10, v3

    move v13, v4

    .end local v3    # "buttonX":I
    .local v10, "buttonX":I
    .local v13, "i":I
    :goto_38
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v13, v3, :cond_13f

    .line 56
    move/from16 v18, v14

    .line 58
    .end local v10    # "buttonX":I
    .local v18, "buttonX":I
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS:[Ljava/lang/String;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    mul-int/lit8 v3, v14, 0x2

    sub-int v3, v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v9, v3, v4

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v11, v3, v4

    const/16 v19, 0x1

    move-object v3, v12

    move-object/from16 v4, p0

    move v7, v14

    move v8, v1

    move/from16 v20, v14

    move-object v14, v12

    .end local v14    # "paddingLeft":I
    .local v20, "paddingLeft":I
    move/from16 v12, v19

    move/from16 v19, v13

    .end local v13    # "i":I
    .local v19, "i":I
    invoke-direct/range {v3 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;Ljava/lang/String;IIIIIIZI)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v18, v18, v3

    .line 117
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_ATTACK:[I

    aget v5, v5, v19

    const-string v14, "+"

    const-string v21, ""

    if-lez v5, :cond_b0

    move-object v5, v14

    goto :goto_b2

    :cond_b0
    move-object/from16 v5, v21

    :goto_b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_ATTACK:[I

    aget v5, v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v5, v3

    move-object/from16 v6, p0

    move/from16 v9, v18

    move v10, v1

    move/from16 v13, v19

    invoke-direct/range {v5 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v3, v18, v3

    .line 143
    .end local v18    # "buttonX":I
    .restart local v3    # "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    aget v6, v6, v19

    if-lez v6, :cond_fd

    goto :goto_ff

    :cond_fd
    move-object/from16 v14, v21

    :goto_ff
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    aget v6, v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v5, v4

    move-object/from16 v6, p0

    move v9, v3

    move v10, v1

    move/from16 v13, v19

    invoke-direct/range {v5 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 55
    add-int/lit8 v13, v19, 0x1

    move v10, v3

    move/from16 v14, v20

    .end local v19    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_38

    .end local v3    # "buttonX":I
    .end local v20    # "paddingLeft":I
    .restart local v10    # "buttonX":I
    .restart local v14    # "paddingLeft":I
    :cond_13f
    move/from16 v19, v13

    move/from16 v20, v14

    .line 171
    .end local v13    # "i":I
    .end local v14    # "paddingLeft":I
    .restart local v20    # "paddingLeft":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, v17

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 173
    .local v11, "tMenuHeight":I
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v12, 0x0

    invoke-direct {v3, v12, v12, v2, v4}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "BattleTactics"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v24, 0x1

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    invoke-direct/range {v21 .. v26}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;Ljava/lang/String;ZZI)V

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v5, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v13, v1

    .end local v1    # "buttonY":I
    .local v13, "buttonY":I
    move-object/from16 v1, p0

    move v14, v2

    .end local v2    # "menuWidth":I
    .local v14, "menuWidth":I
    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v14

    move v6, v11

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 182
    iput-boolean v12, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->drawScrollPositionAlways:Z

    .line 183
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 187
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 188
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 191
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 192
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 193
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 197
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 199
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 200
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 204
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 205
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;->lTime:J

    .line 206
    return-void
.end method
